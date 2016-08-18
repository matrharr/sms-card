class BroadcastsController < ApplicationController

  def create
    create_client

    message = params[:Body]
    user = params[:From]

    payload = parse_message(message, user)

    send_message(payload)
  end

end
