class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :message
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
