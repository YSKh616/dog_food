## users テーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false, add_index|
|email|text|null: false|
|age|integer|
|gender|string|
|area|string|

### Association
- has_many :dogs
- has_many :recipes

##dog
|Column|Type|Option|
|------|----|------|
|name|string|
|age|integer|
|type|string|
|gender|string|
|image|text|
|user_id|integer|foreign_true|

### Association
- belongs_to :user

##recipe
|Column|Type|Option|
|------|----|------|
|title|text|null: false|
|Image|text|
|description|text|
|user_id|integer|foreign_true|

### Association
- belongs_to :user
- has_many :procedures
- has_many :raw_materials

##procedure
|Column|Type|Option|
|------|----|------|
|description|text|
|image|text|
|recipe_id|integer|foreign_true|

###Association
- belongs_to :recipe

##raw_material
|Column|Type|Option|
|------|----|------|
|material|string|
|quantity|string|
|recipe_id|integer|foreign_true|

###Association
- belongs_to :recipe
