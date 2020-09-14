class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: "ninjyasoppy1121@softbank.ne.jp", subject:"お問合せ内容"
  end

end
