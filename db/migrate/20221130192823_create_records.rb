class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :end_time

      t.timestamps
    end
  end
end
