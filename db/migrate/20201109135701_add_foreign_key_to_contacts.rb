class AddForeignKeyToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :solution_id, :integer
    add_foreign_key :contacts, :solutions
  end
end
