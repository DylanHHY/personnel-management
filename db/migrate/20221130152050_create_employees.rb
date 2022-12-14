class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :emp_no
      t.belongs_to :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
