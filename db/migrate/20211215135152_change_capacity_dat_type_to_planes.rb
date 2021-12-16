class ChangeCapacityDatTypeToPlanes < ActiveRecord::Migration[6.1]
  def up
    change_column :planes, :capacity, :string # here new type > string
  end

  def down
    change_column :planes, :capacity, :integer
  end
end
