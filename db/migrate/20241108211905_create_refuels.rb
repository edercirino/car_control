class CreateRefuels < ActiveRecord::Migration[7.2]
  def change
    create_table :refuels do |t|
      t.date :date
      t.integer :km_driven
      t.integer :liters
      t.integer :km_per_liter
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
