FROM python:3.10

WORKDIR /workspace

# 安装依赖
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# 默认进入 workspace
WORKDIR /workspace

CMD ["bash"]
