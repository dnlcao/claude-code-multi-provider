@echo off
chcp 65001 >NUL 2>&1
set PYTHONIOENCODING=utf-8
set ANTHROPIC_BASE_URL=http://localhost:18790
set ANTHROPIC_MODEL=meta/llama-3.1-70b-instruct
echo 切换到 NVIDIA (免费额度) ...
if "%NVIDIA_API_KEY%"=="" (
    echo 警告：NVIDIA_API_KEY 环境变量未设置
    echo 请到 https://build.nvidia.com 申请免费 API Key
)
claude
