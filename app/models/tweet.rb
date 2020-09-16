class Tweet < ApplicationRecord
  has_one_attached :image
  with_options presence: true do
    validates :car_name
    validates :price
    validates :sales_point
    validates :model_year
    validates :mileage
    validates :inspection
    validates :image
  end
  validates :admin, inclusion:{in: [true], message: "許可されたユーザーではありません" }#user.adminがtrueの時だけ許可
end
