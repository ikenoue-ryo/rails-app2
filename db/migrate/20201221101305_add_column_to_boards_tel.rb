class AddColumnToBoardsTel < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :tel, :string
  end
end
