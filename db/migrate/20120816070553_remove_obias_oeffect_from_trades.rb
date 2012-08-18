class RemoveObiasOeffectFromTrades < ActiveRecord::Migration
  def up
    remove_column :trades, :obias
    remove_column :trades, :oeffect
  end

  def down
    add_column :trades, :obias , :integer
    add_column :trades, :oeffect , :integer
  end
end
