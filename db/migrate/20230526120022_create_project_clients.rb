class CreateProjectClients < ActiveRecord::Migration[7.0]
  def change
    create_table :project_clients do |t|
      t.string :name
      t.string :address
      t.integer :contact_no
      t.string :contact_support

      t.timestamps
    end
  end
end
