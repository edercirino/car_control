class CreateCars < ActiveRecord::Migration[7.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :plate

      t.timestamps
    end
  end
end
