class AddJobToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :job, :string
  end
end
