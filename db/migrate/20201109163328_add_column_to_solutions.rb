class AddColumnToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :description_one, :string
    add_column :solutions, :description_two, :string
    add_column :solutions, :image, :string
  end
end
