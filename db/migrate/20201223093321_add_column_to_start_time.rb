class AddColumnToStartTime < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :start_time, :datetime
  end
end
