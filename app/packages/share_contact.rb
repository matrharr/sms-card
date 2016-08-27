module ShareContact

  def bundle_info(message_received, sender_number)

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
    recipient_number = ''
    msg.map! do |line|
      if line[0].downcase == 'p'
        p "test"
        line = line.split('')
        recipient_number = line[2..-1].join
      end
    end

    recipient_name = ''
    first_line = msg[0]
    p first_line
    p first_line[5..7]
    recipient_name = first_line[5..-1]

    # generalize
    
    user = User.find_by(phone_number: sender_number)
  
    recipient_message = "#{user.first_name} has sent you an SMSCard:\n#{user.first_name} #{user.last_name}\n#{user.job_title} at #{user.company}\n#{user.phone_number}\n#{user.email}\ngh: #{user.github}\nin: #{user.linkedin}\nportfolio: #{user.portfolio}"

    # grab recipient_name from msg_received, save to var
    sender_message = "New Contact from SMSCard:\n#{recipient_name}\n#{recipient_number}"

    
    payload = [[recipient_number, recipient_message], [sender_number, sender_message]]

    return payload

  end



end