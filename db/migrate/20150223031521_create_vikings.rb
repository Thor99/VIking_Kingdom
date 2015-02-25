class CreateVikings < ActiveRecord::Migration
  def change
    create_table :vikings do |t|
      t.string :name
      t.string :image
      t.text :history

      t.timestamps null: false
    end
  end
end
