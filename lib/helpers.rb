require "ostruct"

module Helpers
  def office_number
    "0203 432 3920"
  end

  def about_path
    "/about"
  end

  def jobs_path
    "/jobs"
  end

  def faqs_path
    "/faqs"
  end

  def contact_path
    "/about#contact"
  end

  def charity_path
    "/charity"
  end

  def login_path
    "/login"
  end

  def telephone_to(number, icon: true)
    return if number.blank?

    klass = "telephone-icon" if icon
    link_to number, "tel:#{number}", class: klass
  end

  def my_data(name)
    @data ||= {}
    @data[name] ||= YAML.load ERB.new(File.read("data/#{name}.yml")).result
  end
end
