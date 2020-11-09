class AddMoreColumnsToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :tagline, :string
    add_column :solutions, :button, :string
  end
end
