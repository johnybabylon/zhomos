class AddEmailToInmail < ActiveRecord::Migration
  def change
    add_column :inmails, :email, :string
  end
end
