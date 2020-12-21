class AddColumnToBoardsInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :address, :string
    add_column :boards, :tel, :integer
    add_column :boards, :email, :string
  end
end
