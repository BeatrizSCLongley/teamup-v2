class CreateAssociates < ActiveRecord::Migration[6.0]
  def change
    create_table :associates do |t|
      t.string :name
      t.text :bio
      t.string :location
      t.float :latitude
      t.float :longitude
      t.text :image

      t.timestamps
    end
  end
end
