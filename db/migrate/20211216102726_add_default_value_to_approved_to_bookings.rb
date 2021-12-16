class AddDefaultValueToApprovedToBookings < ActiveRecord::Migration[6.1]
  def up
    change_column :bookings, :approved, :boolean, default: false
  end

  def down
    change_column :bookings, :approved, :boolean, default: nil
  end
end