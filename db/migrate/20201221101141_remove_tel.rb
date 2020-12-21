class RemoveTel < ActiveRecord::Migration[5.2]
  def change
    remove_column :boards, :tel, :integer
  end
end
