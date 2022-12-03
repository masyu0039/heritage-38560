# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
|  nickname          | string              | null: false               |
|    profile         | text                | null: false               |


### Association

* has_many :heritages
* has_many :comments


## heritages table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| title                               | string     | null: false                    |
| catch_copy                          | text       | null: false                    |
| concept                             | text       | null: false                    |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## maps table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## comments table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| content     | text       | null: false                    |
| heritage   | references | null: false, foreign_key: true  |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :heritage
- belongs_to :user

## likes table
| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
|  user       |references  | null: false, foreign_key: true |
|  items      |references  | null: false, foreign_key: true |


### Association

-belongs_to : user
-belongs_to : heritage