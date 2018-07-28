

require './common'

class CreateUsers < ActiveRecord::Migration[5.0]
  create_table :users do |t|
    t.column :gender, :string
    t.column :age, :string
    t.timestamps
  end
end

