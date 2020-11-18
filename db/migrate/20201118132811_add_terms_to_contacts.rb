class AddTermsToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :terms, :boolean
  end
end
