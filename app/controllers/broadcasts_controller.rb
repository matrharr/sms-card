require_relative '../services/broadcast_service'
require_relative '../actions/parser'


class BroadcastsController < ApplicationController
  include BroadcastService
  include Parser

  def create
    create_client

    message = params[:Body]
    user = params[:From]

    payload = parse_message(message, user)

    
    if payload[0].is_a?(Array)
      # iteratively send msgs
      payload.each do |msg|
        send_message(msg)
      end

    else
      # send single msg
      send_message(payload)

    end

  end

  def index
    p params
    create_client
  end

end
