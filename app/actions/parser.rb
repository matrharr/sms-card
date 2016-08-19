class Parser

  def parse_message(text, user)

    if text[0].downcase == 'h'

      help_menu = "cat: concatenate files\n
            pwd: print working directory\n
            cd: change the working directory\n
            cp: copy files\nenv: set environment\n
            grep: search for pattern\n
            ls: list contents\n"

      return [user, help_menu]

    else

      # include ability to detect which package

      sc_arr = bundle_info(text)

      return sc_arr
    end 
    
  end

end
