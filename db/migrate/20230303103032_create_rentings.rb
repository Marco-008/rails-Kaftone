class CreateRentings < ActiveRecord::Migration[7.0]
  def change
    create_table :rentings do |t|
      t.date :pick_up_date
      t.date :drop_off_date
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
