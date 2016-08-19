module ShareContact

  def bundle_info(message_received, sender)

    # input: "Sc n matt harris; p +16154064891; soc"

    msg = message_received.split(';')

    # [
    #     [0] "Sc n matt harris",
    #     [1] " p +16154064891",
    #     [2] " soc"
    # ]

    msg.map!{|line| line.strip}

    # [
    #     [0] "Sc n matt harris",
    #     [1] "p +16154064891",
    #     [2] "soc"
    # ]

    # make more flexible

    msg.map! do |line|
      if line[0].downcase == 'p'
        line = line.split('')
        recipient = line[1]
      end
    end

    # generalize
    p sender
    user = User.find_by(phone_number: sender)
    p user
    message_sent = "#{user.first_name} has sent you an SMSCard:\n
                    #{user.first_name} #{user.last_name}\n
                    #{job_title} at #{company}\n
                    #{phone_number}\n
                    #{email}\n
                    gh: #{user.github}\n
                    in: #{user.linkedin}\n
                    portfolio: #{user.portfolio}"

    return [recipient, message_sent]

  end



end