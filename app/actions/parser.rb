require_relative '../packages/share_contact'

class Parser

  def parse_message(text, user)

    if text[0..1].downcase == 'sc'

      sc_arr = bundle_info(text, user)

      return sc_arr
    else
      p "Error parsing"

    end 
    
  end

end
