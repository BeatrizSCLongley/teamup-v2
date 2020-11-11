class AddMoreColumnsToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :tagline, :text
    add_column :solutions, :button, :text
  end
end
