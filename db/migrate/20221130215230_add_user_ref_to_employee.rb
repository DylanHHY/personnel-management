class AddUserRefToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :user
  end
end
