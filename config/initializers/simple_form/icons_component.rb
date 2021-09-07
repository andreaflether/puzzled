module SimpleForm
  module Components
    # Needs to be enabled in order to do automatic lookups
    module Icons
      # Name of the component method
      def left_icon(wrapper_options = nil)
        options.merge!(left_icon_html: { class: options[:left_icon].to_s.html_safe }) if options[:left_icon].present?
        @left_icon ||= begin
          '' if options[:left_icon].present?
        end
      end

      # Name of the component method
      def right_icon(wrapper_options = nil)
        options.merge!(right_icon_html: { class: options[:right_icon].to_s.html_safe }) if options[:right_icon].present?
        @right_icon ||= begin
          '' if options[:right_icon].present?
        end
      end

      def has_left_icon?
        not left_icon.nil?
      end

      def has_right_icon?
        not right_icon.nil?
      end
    end
  end
end

SimpleForm::Inputs::Base.send(:include, SimpleForm::Components::Icons)