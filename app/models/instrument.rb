class Instrument < ActiveRecord::Base
  attr_accessible :name, :symbol
  has_many :trades
end
