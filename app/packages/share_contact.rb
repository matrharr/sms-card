class ShareContact

  def bundle_info(message_received)

    # input: "Sc n matt harris; p +16154064891; soc"

    message_received.split(';')

    # [
    #     [0] "Sc n matt harris",
    #     [1] " p +16154064891",
    #     [2] " soc"
    # ]

    message_received.map!{|line| line.strip}

    # [
    #     [0] "Sc n matt harris",
    #     [1] "p +16154064891",
    #     [2] "soc"
    # ]

    # make more flexible

    message_received.map! do |line|
      if line[0].downcase == 'p'
        line = line.split('')
        recipient = line[1]
      end
    end

    # generalize

    message_sent = "Matt Harris\n
            p: (615)406-4891
            gh: github.com/matrharr\n
            in: linkedin.com/in/matrharr\n
            cv: matrharr.github.io/\n"

    return [recipient, message_sent]

  end



end