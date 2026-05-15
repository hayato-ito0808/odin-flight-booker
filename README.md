# README
# Odin Flight Booker

航空券予約サイトを模したRailsアプリです。

The Odin Project の Rails カリキュラム課題として作成しました。

## 機能

- 出発空港・到着空港・日付・人数によるフライト検索
- フライト選択
- 複数乗客の予約
- 予約情報の表示

## 使用技術

- Ruby
- Ruby on Rails
- SQLite3

## 学習内容

このプロジェクトでは以下を学習しました。

- ActiveRecord の関連付け
- フォームオブジェクト
- nested attributes
- fields_for
- GETリクエストによる検索フォーム
- Rails の MVC 設計

## モデル構成

- Airport
- Flight
- Booking
- Passenger

## セットアップ

```bash
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s
```

## 今後追加したい機能

- ユーザー認証
- 決済機能
- メール送信
- フライト絞り込み
