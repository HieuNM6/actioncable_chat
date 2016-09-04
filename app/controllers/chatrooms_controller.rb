class ChatroomsController < ApplicationController
  before_action :authenticate_user!
  def show
    @chatroom = Chatroom.includes(:messages,:users).find_by name: params[:id]
    @message = Message.new
  end
end
