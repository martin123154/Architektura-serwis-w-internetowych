class CreateScenas < ActiveRecord::Migration
  def change
    create_table :scenas do |t|
      t.string :nazwa
      t.string :wielkosc
      t.integer :numer

      t.timestamps null: false
    end
  end
end
