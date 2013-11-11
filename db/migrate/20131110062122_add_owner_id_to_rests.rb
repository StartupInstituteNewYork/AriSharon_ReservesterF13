class AddOwnerIdToRests < ActiveRecord::Migration
  def change
    add_column :rests, :owner_id, :integer
  end
end
