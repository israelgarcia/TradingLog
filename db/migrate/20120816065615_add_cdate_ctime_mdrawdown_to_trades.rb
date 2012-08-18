class AddCdateCtimeMdrawdownToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :cdate , :date
    add_column :trades, :ctime , :time
    add_column :trades, :cprice , :decimal
    add_column :trades, :mdrawdown , :decimal
  end
end
