class InstructionsController < ApplicationController
  def index
    ocr_text = params[ :ocr_text ]

    ocr_text.split( " " ).each do | word |

    end
  end
end
