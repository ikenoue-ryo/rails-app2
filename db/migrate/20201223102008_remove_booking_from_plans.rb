class RemoveBookingFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :booking, :date
    remove_column :plans, :booking_time, :time
  end
end
