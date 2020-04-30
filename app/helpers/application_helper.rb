module ApplicationHelper
  def format_valor(number)
	  number_to_currency number,
	    unit: "R$ ",
	    separator: ",",
	    delimiter: "."
       end
	def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
      end
    }

    messages
  end
  
  def format_percentual(number)
    number_to_currency number,
	unit: "",
  	separator: ".",
	delimiter: ","
  end
end
