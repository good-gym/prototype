require "ostruct"

module VerifyHelper
  def runner
    @runner ||= begin
      runner = current_page.metadata[:page][:runner]
      OpenStruct.new(my_data(:runners)[runner])
    end
  end

  def membership_flow_path
    "/membership"
  end

  def progress_tag(progress)
    content_tag(:div, class: "float-xs-right") do
      case progress
      when :required then "<subscript>*</subscript> required"
      when :in_progress then ""
      when :complete then ""
      end
    end
  end
end
