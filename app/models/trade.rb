class Trade < ActiveRecord::Base
  attr_accessible :instrument_id, :obias, :odate, :oeffect, :onotes, :oprice, :oshares, :otime, :otype, :user_id

  belongs_to :user
  belongs_to :instrument

  def const 
    constants = { :long => 1 , :short => 2 , :buy => 3 , :sell => 4 , :open => 5 , :close => 6 } 
    return constants
  end

  def constlabels 
    clabels = { 1 => "Long" , 2 => "Short" , 3 => "Buy" , 4 => "Sell" , 5 => "Open" , 6 => "Close" }
    return clabels
  end
end 
