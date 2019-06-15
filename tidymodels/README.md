# tidymodels
本ファイルは`rocker/tidymodels`(https://hub.docker.com/r/rocker/tidyverse/)をベースに日本語環境で『Rによる機械学習』のサンプルコードを動かせるようにしたコンテナイメージ（debian based）。  
`rocker/tidymodels`に以下を追加。
1. 日本語ロケールの追加設定
1. 日本語フォント（IPA Fonts）の追加
1. Rパッケージをインストールするために必要なOSライブラリの追加
1. JDKのインストールと設定 (RWekaを入れるため)
1. 『Rによる機械学習』のサンプルファイルで使用してるRパッケージを追加  
その他、あると便利なパッケージを追加

## 免責事項
本ファイルを使用することによって生じる、いかなる直接的・間接的損害について著作者ならびに本勉強会運営者はいかなる責任・サポート義務は負いません。

# 使い方
```
mkdir rstudio
docker run --name some-rstudio --rm -e PASSWORD=password \
-v $(pwd)/rstudio:/home/rstudio -p 8787:8787 mzdgnk/tidymodels
```

## ユーザを指定したい場合
マウント先のディレクトリがユーザのホームディレクトリになる。
```
mkdir rstudio
docker run --name some-rstudio --rm -e USER=tidymodels -e PASSWORD=password \
-v $(pwd)/rstudio:/home/tidymodels -p 8787:8787 mzdgnk/tidymodels
```

# License 
This Dockerfile is licensed under the GPL 2 or later.
