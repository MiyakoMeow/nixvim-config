# AGENTS.md — nixvim-config

MiyakoMeow 之 NixVim 配置。AI 代理指南。

## 项目结构

```
flake.nix          # 顶层 flake，nixConfig 与 substituters.toml 同步
default.nix        # 递归扫描 plugins/ lang/ config/ keymap/ 下 .nix 文件
substituters.toml  # CI 过滤 .cn 镜像后之 substituter 列表
plugins/           # 按功能分类：ai/ cmp/ dap/ feature/ lsp/ theme/ tools/ ui/
lang/              # 按语言划分 LSP/工具配置（rust.nix, go.nix 等）
config/            # 全局设置（settings.nix）及插件分组配置
keymap/            # 按键映射，按功能分文件（movement.nix, ui.nix 等）
docs/              # 文档（目前为空）
```

新建 `.nix` 文件放对应目录。`default.nix` 自动导入之。

## 开发环境

- `nix develop` 入 devShell（裸 shell，需扩展则加包）。
- `nix flake check` 行所有 check（nixvim module 测试 + evaluation）。
- `nix fmt` 格式化（nixfmt-tree）。CI 以 `nix fmt -- --fail-on-change` 强检。
- `nix build` 构建 Neovim wrapper。
- 改 flake.nix 之 nixConfig 后，同步 `substituters.toml`。二处须一致（CI 读 toml，flake 读 nixConfig）。
- 改 `substituters.toml` 后，确保 CI 解析脚本（用 tomllib）能正确处理。带 `.cn/` 之 URL 为 CI 所过滤（国内镜像不在 CI 中用）。
- `.pre-commit-config.yaml` 在 `.gitignore` 中，不提交。

## CI

GitHub Actions 工作流（`.github/workflows/`）：

| 工作流 | 触发 | 职责 |
|--------|------|------|
| `nix.yml` | PR / push main | `nix flake check` + `nix fmt -- --fail-on-change` + `nix build` |
| `update-flake.yml` | 每旦 02:30 UTC | `nix flake update`，helper bot 提 PR |
| `merge-bot-pr.yml` | bot PR 更新 | CI 过则自动 squash merge |

CI 用 `substituters.toml` 动态生成 nix 配置（过滤国内镜像）。唯不带 `.cn/` 者入 CI。

## 代码风格

- **命名：**设置用 camelCase（`enable`, `inlayHints`），Nix 属性用 kebab-case（`blink-cmp.nix`, `treesitter.nix`）。
- **模块模式：**以 `{ config, pkgs, lib, ... }` 或 `{ pkgs, ... }` 开头，返回 attribute set。
- **plugins 配置：**`plugins.<name> = { enable = true; ... }` 风格。
- **keymaps 配置：**统一用 attribute set 或列表形式，`desc` 字段用简短中文。
- **避深层嵌套：**条件分支提前返回，复杂逻辑提取 let-binding。

## 提交规范

Conventional Commits：

```
feat: <描述>
refactor: <描述>
fix: <描述>
flake.lock: update
docs: <描述>
```

主题行≤50 字。正文惟"why"不显时乃写。

## 检查清单

改后运行：

1. `nix flake check` — 确保 module 测试通过
2. `nix fmt -- --fail-on-change` — 确保格式一致（与 CI 一致）
3. `nix build` — 确保能构建（可选，CI 为之，然本地更快）

## 边界

- 勿改 CI 配置除非必要。
- 勿于 plugins/ 中引入未声明 enable 选项之模块（nixvim 要求显式 enable）。
- 勿删 `substituters.toml` 中之国内镜像条目（为中国大陆用户设）。
- 加新语言支持时于 `lang/` 下创建文件，用对应 nixvim LSP 插件（如 `plugins.rustaceanvim`、`plugins.lsp.servers.rust_analyzer`）。
