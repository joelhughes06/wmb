class Bike < ActiveRecord::Base

  def self.search(query)
    query = query.gsub(/[^0-9a-z]/i, '')
    where("serial_number like ?", "#{query}")
  end

end