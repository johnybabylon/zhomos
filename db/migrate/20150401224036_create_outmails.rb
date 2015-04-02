class CreateOutmails < ActiveRecord::Migration
  def change
    create_table :outmails do |t|
      t.string :to
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
