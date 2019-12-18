# README


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, default: ""|
|password_confirmation|string|null: false, default: ""|
|tell|integer|null: false|
|birthday|string|null: false|
|salse|integer|null: false|
|image|text||

### Association
- has_many :addresses
- has_many :reviews
- has_many :cards
- has_many :messages
- has_many :likes
- has_many :items

## addressテーブル

|Column|Type|Options|
|------|----|-------|
|postnumber|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_line|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user

## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|evaluation|integer|null: false|

### Association
- belongs_to :user

### cardsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|integer|null: false|
|card_id|integer|null: false|

### Associationテーブル
- belongs_to :user


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|null: false|
|price|integer|null: false|
|status|string|null: false|
|postage|string|null: false|
|region|string|null: false|
|shipping_date|string|null: false|
|saler_id|integer|null: false, class_name: User, foreign_key: true|
|buyer_id|integer|null: false, class_name: User, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :messages
- has_many :likes

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

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

## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|integer||

### Association
- has_many :items

## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|integer||

### Association
- has_many :items