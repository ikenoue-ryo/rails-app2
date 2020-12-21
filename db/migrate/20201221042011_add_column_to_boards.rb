class AddColumnToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :furigana, :string
  end
end
