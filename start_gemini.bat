@echo off
chcp 65001 >NUL 2>&1
set PYTHONIOENCODING=utf-8
set ANTHROPIC_BASE_URL=http://localhost:18791
set ANTHROPIC_MODEL=gemini-2.5-pro
echo 切换到 Gemini 2.5 Pro ...
if "%GEMINI_API_KEY%"=="" (
    echo 警告：GEMINI_API_KEY 环境变量未设置
    echo 请确保 Gemini 代理服务已启动
)
claude
