require 'spec_helper'

describe Tweet do

  let(:user) {FactoryGirl.create(:user) }
  before do
    @tweet = Tweet.new(content: "Content example", user_id: user.id)
  end

  subject { @tweet }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
end
