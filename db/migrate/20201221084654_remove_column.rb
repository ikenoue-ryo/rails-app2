class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :name, :string
  end
end
