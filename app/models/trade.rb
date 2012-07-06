class Trade < ActiveRecord::Base
  attr_accessible :instrument_id, :obias, :odate, :oeffect, :onotes, :oprice, :oshares, :otime, :otype, :user_id

belongs_to :user
belongs_to :instrument
end
