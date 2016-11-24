require "ostruct"

module VerifyHelper
  def runner
    runner = OpenStruct.new(references: [])
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
