# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

 README


## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| nickname        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |

has_many :meeting


## meetings テーブル

| Column          | Type    | Options                        |
| ----------------| ------- | ------------------------------ |
| user_id         | integer | null: false , foreign_key: ture|
| start_time      | integee | null: false                    |
| name            | string  | null: false                    |

belongs_to :users
belongs_to :dones

## dones テーブル

| Column      | Type    | Options                        |
| ----------- | ------- | ------------------------------ |
| meeting_id  | integer | null: false , foreign_key: true|

belongs_to :meeting


