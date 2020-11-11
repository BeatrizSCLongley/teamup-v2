class AddColumnToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :description_one, :text
    add_column :solutions, :description_two, :text
    add_column :solutions, :image, :text
  end
end
