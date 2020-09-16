class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :car_name,    null: false
      t.string :price,       null: false
      t.string :sales_point, null: false
      t.string :model_year,  null: false
      t.string :mileage,     null: false
      t.string :inspection,  null: false
      t.boolean :admin,      null: false
      t.timestamps
    end
  end
end
