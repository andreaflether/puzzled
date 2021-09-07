module ApplicationHelper
  def custom_flash_messages
    html_script = '<script>'
    flash.each do |type, message|
      if message
        html_script += <<~EOS 
          $('body').toast({
            position: 'top center',
            class: \"#{toast_class_for(type)}\",
            message: \"#{message}\",
            displayTime: 5000
          });
        EOS
      end
    end
    html_script += '</script>'
    flash_present = flash.to_h.any?
    flash.clear
    flash_present ? html_script.html_safe : ''
  end

  def toast_class_for(flash_type)
    type = {
      success: 'success',
      error: 'error',
      alert: 'warning',
      notice: 'info'
    }

    type[flash_type.to_sym]
  end
end
