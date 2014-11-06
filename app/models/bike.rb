class Bike < ActiveRecord::Base

#  before_save :generate_slug

  def self.search(query)
    query = query.gsub(/[^0-9a-z]/i, '')
    where("serial_number like ?", "#{query}")
  end

#  def generate_slug
#    self.slug = self.serial_number
#  end

#  def to_param
#    self.slug
#  end

end