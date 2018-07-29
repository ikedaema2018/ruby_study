
require './common'

# class CreateUsers < ActiveRecord::Migration[5.0]
#   create_table :comments do |t|
#     t.column :text, :string
#     t.timestamps
#   end
# end

# class CreateUsers < ActiveRecord::Migration[5.0]
#   create_table :comments do |t|
#     t.column :text, :string
#     t.column :post_id, :integer
#     t.timestamps

#   end
# end


# require './common'

# class CreateUsers < ActiveRecord::Migration[5.0]
#   create_table :items do |t|
#     t.column :weapon, :string
#     t.timestamps
#   end
# end


# class CreateUsers < ActiveRecord::Migration[5.0]
#   create_table :diaries do |t|
#     t.column :text, :string
#     t.column :date, :date
#     t.column :count, :int
#     t.timestamps
#   end
# end

class CreateUsers < ActiveRecord::Migration[5.0]
  create_table :profiles do |t|
    t.column :name, :string
    t.column :gender, :string
    t.column :todoufuken, :string
    t.timestamps
  end
end