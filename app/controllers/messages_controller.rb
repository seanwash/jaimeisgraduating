class MessagesController < ApplicationController
  def index
    @messages = Message.all.order 'created_at desc'
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params
    @message.owner = cookies.permanent[:jg_author]

    if @message.save
      redirect_to :messages
    else
      render :edit
    end
  end

  def edit
    @message = Message.find params[:id]
  end

  def update
    @message = Message.find params[:id]

    if @message.update_attributes message_params
      redirect_to :messages
    else
      render :edit
    end
  end

  def destroy
    @message = Message.find params[:id]

    if @message.destroy
      redirect_to :messages, notice: 'Message was successfully deleted'
    else
      redirect_to :messages,
                  notice: 'An error occurred and you message was not deleted. Please try again.'
    end
  end

  private

  def message_params
    params.require(:message).permit(
      :author,
      :email,
      :content
    )
  end
end
