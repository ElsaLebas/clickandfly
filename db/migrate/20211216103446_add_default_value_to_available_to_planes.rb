class AddDefaultValueToAvailableToPlanes < ActiveRecord::Migration[6.1]
  def up
    change_column :planes, :available, :boolean, default: true
  end

  def down
    change_column :planes, :available, :boolean, default: nil
  end
end
