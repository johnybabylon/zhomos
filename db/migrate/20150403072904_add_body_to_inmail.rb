class AddBodyToInmail < ActiveRecord::Migration
  def change
    add_column :inmails, :body, :text
  end
end
