class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
