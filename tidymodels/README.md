# tidymodels
本イメージは[mlwr](https://hub.docker.com/r/mzdgnk/mlwr)にtidymodelsを追加したイメージである。
ベースイメージの[mlwr](https://hub.docker.com/r/mzdgnk/mlwr)は常に最新のイメージがプッシュされているが、tidymodelsは最新のイメージがプッシュされていない可能性がある。
理由は、dockerhub上でビルドできない(メモリ使用量の関係)ため、ローカルで手動ビルド/プッシュしているからである。

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
