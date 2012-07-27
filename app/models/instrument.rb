# == Schema Information
#
# Table name: instruments
#
#  id         :integer         not null, primary key
#  symbol     :string(255)
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Instrument < ActiveRecord::Base
  attr_accessible :name, :symbol
  has_many :trades
end
