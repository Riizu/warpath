class AddUserRefToArmies < ActiveRecord::Migration
  def change
    add_reference :armies, :user, index: true, foreign_key: true
  end
end
