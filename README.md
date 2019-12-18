# README


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, default: ""|
|tell|integer|null: false|
|postnumber|string|null: false|
|address|string|null: false|
|birthday|string|null: false|
|salse|integer|null: false|
|image|text||

### Association
- has_many :items
- has_many :messages
- has_many :likes

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|null: false|
|price|integer|null: false|
|status|string|null: false|
|postage|string|null: false|
|region|string|null: false|
|days|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :messages
- has_many :likes

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|item_id|integer|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :items

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item