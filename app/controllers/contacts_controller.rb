class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
    redirect_to new_contact_url, notice: "「#{@contact.name}様」からのお問い合わせを登録しました。"
    else
      render :new
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
