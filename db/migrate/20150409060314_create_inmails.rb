class CreateInmails < ActiveRecord::Migration
  def change
    create_table :inmails do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.text :body
      t.string :headers

      t.timestamps null: false
    end
  end
end
