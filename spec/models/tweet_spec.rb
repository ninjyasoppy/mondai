require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    user = FactoryBot.create(:user)
    user.admin = true
    @tweet = FactoryBot.build(:tweet)
    @tweet.admin = user.admin
    @tweet.image = fixture_file_upload('public/images/rapan.jpg')
  end
  it "全てのデータが存在していればデータは保存出来る" do
    expect(@tweet).to be_valid
  end

  it "商品名が登録されてないと登録できない" do
    @tweet.car_name= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Car name can't be blank") 
  end

  it "価格が登録されてないと登録できない" do
    @tweet.price= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Price can't be blank") 
  end

  it "セールスポイントが登録されてないと登録できない" do
    @tweet.sales_point= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Sales point can't be blank") 
  end

  it "価格が登録されてないと登録できない" do
    @tweet.model_year= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Model year can't be blank") 
  end

  it "走行距離が登録されてないと登録できない" do
    @tweet.mileage= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Mileage can't be blank") 
  end

  it "車検が登録されてないと登録できない" do
    @tweet.inspection= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Inspection can't be blank") 
  end

  it "画像が登録されてないと登録できない" do
    @tweet.image= nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Image can't be blank") 
  end

  it "投稿権限を付与されてないと登録できない" do
    @tweet.admin = false
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Admin 許可されたユーザーではありません") 
  end
end
