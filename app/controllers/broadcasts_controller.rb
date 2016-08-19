require_relative '../services/broadcast_service'
require_relative '../actions/parser'


class BroadcastsController < ApplicationController
  include BroadcastService
  include Parser

  def create
    p params
    create_client

    message = params[:Body]
    user = params[:From]

    payload = parse_message(message, user)

    send_message(payload)
  end

  def index
    p params
    create_client
  end

end
