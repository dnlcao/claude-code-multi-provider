# Claude Code Multi-Provider

Claude Code 多模型切换工具 — 支持 MiniMax / Gemini / NVIDIA / Kimi / Qwen / 豆包 等任意 OpenAI 兼容 API 模型一键切换。

## 功能

- 内置 MiniMax / Gemini / NVIDIA 三路默认模型
- 支持添加任意自定义模型（Kimi、Qwen、豆包等）
- 一键切换当前使用的模型
- 自动备份当前配置
- 启动脚本，开箱即用

## 快速开始

### 方式一：克隆到 Skills 目录

```bash
git clone https://github.com/dnlcao/claude-code-multi-provider.git
cp -r claude-code-multi-provider ~/.claude/skills/
```

### 方式二：手动下载

下载仓库并复制到 `~/.claude/skills/claude-code-multi-provider/` 目录。

## 使用方法

### 命令行

```bash
# 查看状态
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py status

# 列出所有模型
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py list

# 切换到指定模型
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py use minimax

# 添加自定义模型
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py add kimi \
  --base-url https://api.moonshot.cn/v1 \
  --model moonshot-v1-32k \
  --description "Kimi 月之暗面"

# 删除模型
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py remove kimi

# 重置为默认
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py reset
```

### 启动脚本

```batch
start_minimax.bat   # MiniMax-M2.7
start_gemini.bat    # Gemini 2.5 Pro
start_nvidia.bat    # NVIDIA 免费额度
```

## 内置模型

| 模型 | Base URL | 说明 |
|------|----------|------|
| MiniMax | `https://api.minimaxi.com/anthropic` | 推荐主力，性价比最高 |
| Gemini | `http://localhost:18791` | 复杂推理，图片理解（需本地代理） |
| NVIDIA | `https://integrate.api.nvidia.com/v1` | 免费额度，备用方案 |

## 添加更多模型

只要是 OpenAI 兼容 API 的模型都可以添加：

```bash
# 添加 Kimi
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py add kimi \
  --base-url https://api.moonshot.cn/v1 \
  --model moonshot-v1-32k \
  --description "Kimi 月之暗面"

# 添加 Qwen
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py add qwen \
  --base-url https://dashscope.aliyuncs.com/compatible-mode/v1 \
  --model qwen-plus \
  --description "阿里通义千问"

# 添加豆包
python ~/.claude/skills/claude-code-multi-provider/scripts/multi_provider.py add doubao \
  --base-url https://ark.cn-beijing.volces.com/api/v3 \
  --model doubao-pro-32k \
  --description "字节豆包"
```

## 配置说明

- 模型配置：`~/.claude/models.json`
- Claude Code 配置：`~/.claude/settings.json`（切换模型时自动备份）

## 文档

配套文章：[Claude Code续命指南](https://github.com/dnlcao/claude-code-multi-provider/blob/main/../2026-04-23-claude-code-rescue-guide.md)

---

*配套文章《Claude Code续命指南》使用*
