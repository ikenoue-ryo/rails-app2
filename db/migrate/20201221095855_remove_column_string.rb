class RemoveColumnString < ActiveRecord::Migration[5.2]
  def change
    remove_column :boards, :string, :string
  end
end
