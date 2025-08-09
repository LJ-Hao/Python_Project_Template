# Makefile for a Python project

.PHONY: install uv test lint format clean
uv:
	pip install uv && uv venv && source .venv/bin/activate && uv sync

# 运行测试（假设用pytest）
test:
	pytest tests/

# 代码检查（假设用flake8）
lint:
	flake8 src/

# 代码格式化（假设用black）
format:
	black src/

# 清理pyc文件和__pycache__文件夹
clean:
	find . -name '*.pyc' -delete
	find . -name '__pycache__' -exec rm -rf {} +

