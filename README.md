k-metrics docker container images
================

`rocker/verse` based docker images for Machine Learning with R.

About
-----

本リポジトリは[rocker/verse](https://hub.docker.com/r/rocker/verse)をベースに日本語環境で[データ分析勉強会](https://sites.google.com/site/kantometrics/2019)におけるテキストである[『Rによる機械学習』](https://www.shoeisha.co.jp/book/detail/9784798145112)のサンプルコードが動かせるコンテナイメージを作成し公開しています。


なお、公開しているコンテナイメージを使用することによって生じる、いかなる直接的・間接的損害について著作者ならびに勉強会運営者はいかなる責任・サポート義務は負いません。

Container images
----------------

公開しているコンテナイメージは以下の通りです。

| image                                                           | base iamge   | descriptions                               | build     |
|-----------------------------------------------------------------|--------------|--------------------------------------------|-----------|
| [mzdgnk/jverse](https://hub.docker.com/r/mzdgnk/jverse)         | rocker/verse | Japanized base image                       | automated |
| [mzdgnk/mlwr](https://hub.docker.com/r/mzdgnk/mlwr)             | jverse       | Add R packages for Machine Learnign with R | automated |
| [mzdgnk/tidymodels](https://hub.docker.com/r/mzdgnk/tidymodels) | mlwr         | Add tidymodels package                     | local     |

### jverse

[rocker/verse](https://hub.docker.com/r/rocker/verse)をベースに以下を追加しています。

1.  日本語ロケールの追加
2.  日本語フォント（IPA and Noto）の追加
3.  Rパッケージに必要なOSライブラリ群の追加
4.  Java環境の追加と設定

### mlwr

`jverse`をベースに[『Rによる機械学習』](https://www.shoeisha.co.jp/book/detail/9784798145112)のサンプルコードを動かすために必要なRパッケージを追加しています。

### tidymodels

`mlwr`をベースに`tidymodels`パッケージを追加しています。以下の依存関係により関連パッケージとしてインストールされる`rstan`パッケージがdockerhub環境ではビルドできないため、ローカルビルドしたものをpushしています。

-   `tidymodels` imports `tidyposterior`
-   `tidyposterior` imports `rstanarm`
-   `rstanarm` imports `rstan`

Usage
-----

使い方の基本は`rocker/*`と同じで必ずパスワードの指定を行ってください。

``` bash
mkdir rstudio
docker run --name some-rstudio -p 8787:8787 \
 -v $(pwd)/rstudio:/home/rstudio -e PASSWORD=passwd mzdgnk/tidymodels
```

<http://localhost:8787> でrstudio serverにアクセスします。
`Ctrl + C`でコンテナを落とします。

``` bash
docker run --name コンテナ名 -p ホストのポート:8787 \
  -v マウントしたいホストパス:/home/rstudio \
  -e PASSWORD=パスワード イメージ名
```

| 設定項目                 | 設定例       | 説明                                                              |
|--------------------------|--------------|-------------------------------------------------------------------|
| マウントしたいホストパス | /home/user/R | 任意のローカルパス(絶対パス)、Windowsの場合"/C/..."となる点に注意 |
| パスワード               | password     | 任意のパスワード                                                  |
| コンテナ名               | tidymodels   | 任意のコンテナ名称                                                |
| イメージ名               | tidymodels   | jverse, mlwr, tidymodelsから選択                                  |

License
-------

-   Dockerfiles are licensed under the GPL 2 or later.
