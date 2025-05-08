FROM python:3.10-slim

# 必要パッケージのインストール
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ作成
WORKDIR /app

# ComfyUI をコピー（clone済みの場合）
COPY ComfyUI /app/ComfyUI

# 依存関係インストール
WORKDIR /app/ComfyUI
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# ポート
EXPOSE 7777

# 起動コマンド
CMD ["python", "main.py", "--listen", "0.0.0.0"]
