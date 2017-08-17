class InstructionsController < ApplicationController
  def index
    ocr_text = session[ :ocr_text ]

    session[ :ocr_text ] = nil

    key_words = [ "allied", "oxford", "medicare", "healthfirst" ]

    key_hash = {
                "allied" => "mail: allied benefit svstems, inc. \r\n",
                "oxford" => "for members: \r\n" + "www.oxfordhealth.com",
                "medicare" => "health care financing administration",
                "healthfirst" => "healthfirst"
              }

    text_found = []

    key_words.each do | key |
      if ocr_text.include?( key )
        if ocr_text.include?( key_hash[ key ] )
          text_found << key
        end
      end
    end
    @render = text_found[ 0 ]
  end
end
