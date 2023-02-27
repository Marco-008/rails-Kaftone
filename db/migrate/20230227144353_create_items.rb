class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :location
      t.string :picture
      t.string :review
      t.string :color

      t.timestamps
    end
  end
end
