class Donor < ApplicationRecord
  has_secure_password

  validates_presence_of :bloodtype, message: 'you cannot be blank'

  def name
    # self.first_name + '' + self.last_name
    return [self.first_name, self.last_name].map(&:capitalize).join(" ")
  end
end
