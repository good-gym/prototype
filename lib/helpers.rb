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

  def trainers
    current_page.metadata[:page][:trainers].map { |data| OpenStruct.new(data) }
  end
end
