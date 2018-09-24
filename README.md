# ボイスログ評価管理システム

コールセンター業務をしているスタッフの評価結果（これをボイスログ評価と呼ぶ）を投入、  
管理するシステムです。スタッフ情報の参照、投入したデータの出力が可能です。

## Description

<https://stormy-shore-37000.herokuapp.com/>  
<img src="/app/assets/images/top.png" width="600px">  

## Requirement

\*Ruby 2.3.0  
\*Rails 5.1.6  
\*PostgreSQL 10.1  
\*Bootstrap 4  

## Function

\*ボイスログ評価結果のCRUD処理  
\*スタッフ情報のCRUD処理  
\*管理画面(rails admin)機能  
\*ユーザーログイン機能  

### Usage

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。

```sh
$ git clone git@github.com:emi-sammy/voice_logs.git
```

次に、以下のコマンドで必要になる Ruby Gems をインストールします。

```sh
$ bundle install
```

その後、データベースへのマイグレーションを実行します。

```sh
$ rails db:migrate
```

### Future Releases

\*検索機能  
\*スタッフ情報への評価結果反映  
\*ＣＳＶデータのインポート　　

## License

[MIT](LICENSE)
