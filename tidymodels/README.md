# tidymodels
本イメージは日本語環境で[『Rによる機械学習』](https://www.shoeisha.co.jp/book/detail/9784798145112)のサンプルコードが動かせるrstudioサーバである[mlwr](https://hub.docker.com/r/mzdgnk/mlwr)に、tidymodelsを追加したコンテナイメージです。

[データ分析勉強会](https://sites.google.com/site/kantometrics/2019)で使う目的で作ったイメージです。

ベースイメージの[mlwr](https://hub.docker.com/r/mzdgnk/mlwr)は常に最新のイメージがプッシュされますが、tidymodelsは最新のイメージがプッシュされていない可能性があります。
理由は、dockerhub上でビルドできない(メモリ使用量の関係)ため、ローカルで手動ビルド/プッシュしているからです。

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
