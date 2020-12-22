class AddColumnToBoardsBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :booking, :date
  end
end
