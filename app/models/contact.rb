class Contact < ApplicationRecord
  EMAIL = /\A\S+@\S+\z/
  with_options presence: true do
    validates :name
    validates :message
    validates :email, format:{with: EMAIL}
    validates :phone_number
  end
end
