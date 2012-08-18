# == Schema Information
#
# Table name: trades
#
#  id            :integer         not null, primary key
#  user_id       :integer
#  instrument_id :integer
#  odate         :date
#  otime         :time
#  oshares       :integer
#  obias         :integer
#  otype         :integer
#  oprice        :decimal(, )
#  oeffect       :integer
#  onotes        :text
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Trade < ActiveRecord::Base
  attr_accessible  :obias, :odate, :oeffect, :onotes, :oprice, :oshares, :otime, :otype 
  validates :user_id, presence: true
  validates :instrument_id, presence: true

  belongs_to :user
  belongs_to :instrument

  default_scope order: 'trades.otime DESC'

  def const 
    constants = { :long => 1 , :short => 2 , :buy => 3 , :sell => 4 , :open => 5 , :close => 6 } 
    return constants
  end

  def constlabels 
    clabels = { 1 => "Long" , 2 => "Short" , 3 => "Buy" , 4 => "Sell" , 5 => "Open" , 6 => "Close" }
    return clabels
  end
end 
