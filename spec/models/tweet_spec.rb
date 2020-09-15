require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
    @tweet.image = fixture_file_upload('public/images/rapan.jpg')
  end
  it "全てのデータが存在していればデータは保存出来る" do
    expect(@tweet).to be_valid
  end
end
