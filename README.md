# docker_comfyui
comfyuiをDockerで立てる方法  
画像生成をするときに便利なComfyUIを、Dockerで立てておいてすぐに使える環境にする。  
Dockerで立てなくても、Githubから取ってきて、`python main.py`を実行するとComfyUIを動かすことができる。  
ComfyUIのGithub : https://github.com/comfyanonymous/ComfyUI.git
## やり方　その１  
1. Dockerfileを作る。
2. Dockerイメージをビルドする。  
   `sudo docker build -t ◯◯◯`
   ◯◯◯にイメージ名をつける
4. コンテナの起動  
   `sudo docker run -d -p ◯◯◯◯:◯◯◯◯ -name ◯◯◯`  
   -d　　detached モード(バックグラウンドで実行)  
   -p ホスト:コンテナ　　ポート番号のマッピング。ホストのポートをコンテナのポートに接続する。  
   -name ◯◯◯  コンテナにわかりやすい名前をつける  
## やり方 その2  
