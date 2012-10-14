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

require 'test_helper'

class TradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
