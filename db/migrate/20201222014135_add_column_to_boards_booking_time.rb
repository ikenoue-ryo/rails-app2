class AddColumnToBoardsBookingTime < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :booking_time, :time
  end
end
