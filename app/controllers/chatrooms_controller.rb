class ChatroomsController < ApplicationController
  before_action :authenticate_user!
  def show
    @chatroom = Chatroom.find_by name: params[:id]
    @message = Message.new
  end
end
