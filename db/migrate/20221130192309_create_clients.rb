class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :add
      t.text :note

      t.timestamps
    end
  end
end
