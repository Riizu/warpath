class AddColumnToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :army_id, :integer
    add_column :assignments, :unit_id, :integer
  end
end
