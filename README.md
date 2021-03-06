
# README
# アプリケーション名
Task.com

## アプリケーション概要
自分の目標を定め三日坊主を阻止することが出来る。


## URL
デプロイ次第記述


## テスト用アカウント
メールアドレス：test＠test

パスワード : test1234


## 利用方法
1. スケジュール表にtodoリストを記述

1. ToDoリストに記載されるので行ったら完了ボタンを押す

1. 完了出来たらリストからは消え、一覧表示に記載される


## 課題解決
ダイエットや勉強など自分の目標があり続けたい事があるのになかなか続けられない人に向けた三日坊主阻止アプリ。

ただカレンダーに記入するだけではなく、達成出来た予定は一覧で見る事が出来る為達成感を味わう事が出来る。


## 要件定義
* 機能

予定表にToDoリストを記入し、完了した予定を一覧で表示出来る機能

* 目的
三日坊主になりたくないユーザーをサポートする

* 詳細

1. カレンダーにToDoリストを追加出来るようにする為

1. ユーザー管理機能：新規登録、ログイン、ログアウト

1. ToDoリスト詳細表示、編集、削除、完了機能

## ストーリー(ユースケース)
ユーザーが日時を指定してToDoリストを記入する。

ToDoリストを追加後、詳細、編集、削除、完了が出来るようにする。

また、ユーザー新規登録・ログイン・ログアウト機能も実装。


## テーブル
![ER図](https://user-images.githubusercontent.com/70619773/96684924-591dcc00-13b7-11eb-8861-9d462105ffd4.png)


## 実装した機能
* ユーザー管理機能、スケジュール機能

∟ToDoリストを管理じて三日坊主を阻止する

![calendar](https://user-images.githubusercontent.com/70619773/96686861-101b4700-13ba-11eb-8ecf-6ea262f7db7f.gif)

## 実装予定の機能
特になし

## ローカルでの動作方法
以下の順でターミナルに入力してください。
```
git clone https://github.com/sakuma-rina/app-calendar.git #アプリをclone

% cd #ホームディレクトリに移動
% cd app-calendar #app-calendarディレクトリに移動
bundle install #Gemを有効にする
rails db:create #データベースを作成する
rails db:migrate #データベースを有効にする
```

## 開発環境
* ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-darwin19]
* Rails 6.0.3.3
* mysql  Ver 14.14 Distrib 5.6.47, for osx10.15 (x86_64) using  EditLine wrapper
* Mac OS Catalina version 10.15.6