class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone_number
      t.string :string

      t.timestamps
    end
  end
end
