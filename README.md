# docker_comfyui
comfyuiをDockerで立てる方法  
画像生成をするときに便利なComfyUIを、Dockerで立てておいてすぐに使える環境にする。  
自分のPCから、sshでサーバーに繋いで、サーバー上でcomfyuiをdockerで立てると、ポートのつながりを考える必要があるので、とても勉強になります。(図を載せる)  
Dockerで立てなくても、Githubから取ってきて、`python main.py`を実行するとComfyUIを動かすことができる。  
ComfyUIのGithub : https://github.com/comfyanonymous/ComfyUI.git
## やり方　その１  
1. Dockerfileを作る。  
   Dockerfileの構成  
   ①ベースイメージを指定  
   ②作業ディレクトリの作成と設定  
   ③ホストのファイルをコンテナにコピー  
   ④依存関係のインストール  
   ⑤必要なポートを指定  
   ここのポート指定の役割：「このポートを使う予定ですよ」と情報を開示する。(ここでポートが開いたわけではない。)  
   ⑥コンテナ起動時に実行されるコマンド
2. Dockerイメージをビルドする。  
   `sudo docker build -t ◯◯◯`
   ◯◯◯にイメージ名をつける
3. コンテナの起動。  
   `sudo docker run --gpus all -d -p ◯◯◯◯:◯◯◯◯ -name コンテナ名 イメージ名`  
   -d　　detached モード(バックグラウンドで実行)  
   -p ホスト:コンテナ　　ポート番号のマッピング。ホストのポートをコンテナのポートに接続する。  
   -name ◯◯◯  コンテナにわかりやすい名前をつける  
## やり方 その2  
docker composeでコンテナを作る。  
何が嬉しい？：複数コンテナを管理するための設定ができる。  
1. Dockerfileを作る。  
2. docker-compose.ymlファイルを作る。  
   .ymlファイル内でイメージ作成について記述する。 
4. `docker-compose up -d`をしたらOK


※GPUの設定に関してエラーが出る可能性がある。DockerでGPUが使えるように設定する必要がある。
