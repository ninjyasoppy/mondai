class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
      ContactMailer.contact_mail(@contact).deliver_now#メール送信はコントローラーのアクションから実行する
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :message)
  end
end
