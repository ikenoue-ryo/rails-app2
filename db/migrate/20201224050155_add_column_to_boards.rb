class AddColumnToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :start_time, :datetime
  end
end
