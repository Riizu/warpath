class AddUnitRefToCollections < ActiveRecord::Migration
  def change
    add_reference :collections, :unit, index: true, foreign_key: true
  end
end
