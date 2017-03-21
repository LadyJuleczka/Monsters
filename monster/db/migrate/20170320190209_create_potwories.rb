class CreatePotwories < ActiveRecord::Migration[5.0]
  def change
    create_table :potwories do |t|
      t.string :nazwa
      t.text :opis
      t.integer :wiek
      t.string :wrazliwosc

      t.timestamps
    end
  end
end
