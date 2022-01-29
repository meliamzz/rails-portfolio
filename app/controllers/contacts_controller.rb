class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  before_action :set_contact, only: [:update, :destroy]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @message.read = true
    @message.update(read_message_params)
    redirect_to admin_path
  end

  def destroy
    @message.destroy
    redirect_to admin_path
  end

  private

  def set_contact
    @message = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message, :read)
  end

  def read_message_params
    params.permit(:read)
  end
end
