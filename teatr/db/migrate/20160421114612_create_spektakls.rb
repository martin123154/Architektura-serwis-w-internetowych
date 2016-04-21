class CreateSpektakls < ActiveRecord::Migration[5.0]
  def change
    create_table :spektakls do |t|
      t.string :tytul
      t.string :rezyser
      t.datetime :premiera

      t.timestamps
    end
  end
end
