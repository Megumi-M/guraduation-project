# お料理教室予約サイト  
## 概要  
お料理教室を開きたい人と参加したい人を繋げるためのアプリです。  
## コンセプト  
ユーザーはブログ投稿と同じような操作で気軽にイベント（お料理教室）を投稿することができる。 また気になるレッスンから自身が参加者になることも、レッスン企画者になることも可能です。  
## バージョン  　
ruby 2.4.0,
Rails 5.1.6.1  　
## 機能一覧  
□ログイン機能（DEVISE利用※Phase４の機能）  
□会員登録  
    メールアドレス、名前、ニックネーム、パスワード、電話番号、性別選択は必須  
□検索機能（カリキュラム外）  
    募集中のレッスンをエリアで絞って検索する機能  
□マイページ  
□レッスン募集  
    レッスンの投稿、編集、削除が可能  
□レッスン一覧表示  
□レッスン予約機能  
□予約キャンセル機能  
□メッセージ機能（Phase4の機能）  
    １：１のメッセージ機能  
※以下は余力次第で実装予定。  
□クリップ  
    気になったレッスンを保存できる機能  
□確認メール機能  
    予約完了メールが届く  
□締め切り  
    締め切りがきたら、予約受付不可となる機能  
□予約管理機能  
    企画者が自分が募集しているレッスンの参加者や人数が一覧で確認できる  
## カタログ設計  
<https://docs.google.com/spreadsheets/d/1lV0YrrCzXfyNx83vtfpGh9jYAoNQS_KBUHftJbvsi5I/edit?usp=sharing>  
## テーブル定義  
<https://docs.google.com/spreadsheets/d/1lV0YrrCzXfyNx83vtfpGh9jYAoNQS_KBUHftJbvsi5I/edit?usp=sharing>  
## 画面遷移図  
<https://docs.google.com/spreadsheets/d/147wQVCY2nAbC7cUD1j-slJDv7z6jH1gTOOUtnHTFtqE/edit?usp=sharing>  
## 画面ワイヤーフレーム  
<https://cacoo.com/diagrams/Xz8CfRlE8OsMtld6/213DC>  
## 使用予定Gem  
carrierwave  
mini_magick  
DEVISE  
