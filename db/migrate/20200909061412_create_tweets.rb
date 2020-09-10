class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :car_name
      t.string :price
      t.string :sales_point
      t.string :model_year
      t.string :mileage
      t.string :inspection
      t.timestamps
    end
  end
end
