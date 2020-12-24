class RemoveColumnToBoards < ActiveRecord::Migration[5.2]
  def change
    remove_column :boards, :booking, :date
    remove_column :boards, :booking_time, :time
  end
end
