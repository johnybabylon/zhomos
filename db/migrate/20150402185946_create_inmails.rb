class CreateInmails < ActiveRecord::Migration
  def change
    create_table :inmails do |t|
      t.text :body
      t.string :email

      t.timestamps null: false
    end
  end
end
