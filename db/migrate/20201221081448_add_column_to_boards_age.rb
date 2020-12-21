class AddColumnToBoardsAge < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :age, :integer
  end
end
