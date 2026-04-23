@echo off
chcp 65001 >NUL 2>&1
set PYTHONIOENCODING=utf-8
set ANTHROPIC_BASE_URL=https://api.minimaxi.com/anthropic
set ANTHROPIC_MODEL=MiniMax-M2.7
echo 切换到 MiniMax-M2.7 ...
if "%MINIMAX_API_KEY%"=="" (
    echo 警告：MINIMAX_API_KEY 环境变量未设置
    echo 请先设置：set MINIMAX_API_KEY=your-key
)
claude
