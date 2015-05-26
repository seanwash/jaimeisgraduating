class ChangeNameToAuthorOnMessages < ActiveRecord::Migration
  def change
    rename_column :messages, :name, :author
  end
end
