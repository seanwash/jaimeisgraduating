class AddOwnerToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :owner, :string
  end
end
