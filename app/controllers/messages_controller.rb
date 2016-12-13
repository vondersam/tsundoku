class MessagesController < ApplicationController
   before_action :authenticate_user!

  def new
    @chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
    @book = PhysicalBook.find(params[:book])
  end

  def create
    recipients = User.find(params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"

    redirect_to conversation_path(conversation)
  end
end
