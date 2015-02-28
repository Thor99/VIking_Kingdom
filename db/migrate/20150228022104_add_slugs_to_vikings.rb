class AddSlugsToVikings < ActiveRecord::Migration
  def change
    add_column :vikings, :slug, :string
    add_index :vikings, :slug
  end
end
