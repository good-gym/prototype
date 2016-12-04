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

  def my_references_path
    "/my/references"
  end
  
  def dbs_path
    "/my/dbs"
  end

  def todo_button(name, link)
    link_to(name, link, class: "btn-todo")
  end

  def done_button(name)
    content_tag(:div, class: "btn btn-lg btn-block btn-success disabled") do
      (name + content_tag(:i, " ", class: "pull-right glyphicon glyphicon-ok")).html_safe
    end
  end
end
