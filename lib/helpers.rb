require "ostruct"

module Helpers
  def office_number
    "0203 432 3920"
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

  def my_data(name)
    @data ||= {}
    @data[name] ||= YAML.load ERB.new(File.read("data/#{name}.yml")).result
  end
end
