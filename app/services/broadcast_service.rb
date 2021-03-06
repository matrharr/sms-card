module BroadcastService

  def create_client
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_message(payload_arr)
    recipient = payload_arr[0]
    message = payload_arr[1]

    @client.messages.create(
        from: '+18555541181',
        to: recipient,
        body: message
        )
  end




end