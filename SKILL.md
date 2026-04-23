---
name: claude-code-multi-provider
description: Claude Code 多模型切换工具 — 支持自定义模型配置，MiniMax/Gemini/NVIDIA/Kimi/Qwen等任意API兼容模型一键切换
version: 1.1.0
metadata:
  openclaw:
    homepage: https://github.com/你的用户名/claude-code-multi-provider
    tags: [claude-code, multi-provider, ai-model, custom-provider]
---

# Claude Code 多模型切换工具

支持**自定义任意模型**，MiniMax / Gemini / NVIDIA / Kimi / Qwen / 豆包 等任何 API 兼容模型都能配置。

## 功能

- 添加/删除/切换自定义模型
- 保存多个模型配置
- 一键切换当前使用的模型
- 健康检查确保模型可用
- 支持 Claude Code 命令行和快捷脚本

## 使用方式

### 基础命令

```bash
# 查看当前状态
/multi-provider status

# 切换到指定模型
/multi-provider use MODEL_NAME

# 列出所有可用模型
/multi-provider list

# 健康检查
/multi-provider check
```

### 模型管理

```bash
# 添加新模型
/multi-provider add MODEL_NAME --base-url URL --model MODEL_ID --key API_KEY

# 删除模型
/multi-provider remove MODEL_NAME

# 编辑模型配置
/multi-provider edit MODEL_NAME --key NEW_API_KEY
```

### 快捷启动脚本

```batch
start_minimax.bat   # MiniMax-M2.7
start_gemini.bat    # Gemini 2.5 Pro
start_nvidia.bat    # NVIDIA 免费额度
```

## 内置模型配置

### MiniMax（推荐主力）
- Base URL: `https://api.minimaxi.com/anthropic`
- Model: `MiniMax-M2.7`
- 特点：速度快，稳定，性价比高
- 👉 https://platform.minimaxi.com/subscribe/token-plan?code=AHaULLXS9F&source=link

### Gemini
- Base URL: `http://localhost:18791`（需要本地代理）
- Model: `gemini-2.5-pro`
- 特点：复杂推理，图片理解

### NVIDIA（免费）
- Base URL: `https://integrate.api.nvidia.com/v1`
- Model: `meta/llama-3.1-70b-instruct`
- 特点：完全免费，白嫖额度

## 自定义添加模型

### 添加 Kimi

```bash
/multi-provider add kimi \
  --base-url https://api.moonshot.cn/v1 \
  --model moonshot-v1-32k \
  --key YOUR_KIMI_API_KEY
```

### 添加 Qwen

```bash
/multi-provider add qwen \
  --base-url https://dashscope.aliyuncs.com/compatible-mode/v1 \
  --model qwen-plus \
  --key YOUR_QWEN_API_KEY
```

### 添加 豆包

```bash
/multi-provider add doubao \
  --base-url https://ark.cn-beijing.volces.com/api/v3 \
  --model doubao-pro-32k \
  --key YOUR_DOUBAO_API_KEY
```

## 配置示例

内置 `models.json` 配置文件：

```json
{
  "current": "minimax",
  "models": {
    "minimax": {
      "name": "MiniMax-M2.7",
      "base_url": "https://api.minimaxi.com/anthropic",
      "model": "MiniMax-M2.7",
      "api_key_env": "MINIMAX_API_KEY",
      "description": "推荐主力，性价比最高"
    },
    "gemini": {
      "name": "Gemini 2.5 Pro",
      "base_url": "http://localhost:18791",
      "model": "gemini-2.5-pro",
      "api_key_env": "GEMINI_API_KEY",
      "description": "复杂推理，图片理解"
    },
    "nvidia": {
      "name": "NVIDIA (免费)",
      "base_url": "https://integrate.api.nvidia.com/v1",
      "model": "meta/llama-3.1-70b-instruct",
      "api_key_env": "NVIDIA_API_KEY",
      "description": "白嫖额度，备用方案"
    }
  }
}
```

---

*此 Skill 支持完全自定义模型配置，可配合文章《Claude Code续命指南》使用*
*GitHub: https://github.com/你的用户名/claude-code-multi-provider*