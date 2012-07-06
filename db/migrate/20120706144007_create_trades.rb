class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.integer :instrument_id
      t.date :odate
      t.time :otime
      t.integer :oshares
      t.integer :obias
      t.integer :otype
      t.decimal :oprice
      t.integer :oeffect
      t.text :onotes

      t.timestamps
    end
  end
end
