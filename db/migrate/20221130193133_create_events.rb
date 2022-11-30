class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.belongs_to :employee, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
