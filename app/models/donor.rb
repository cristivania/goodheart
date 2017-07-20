class Donor < ApplicationRecord
  has_secure_password

  def name
    # self.first_name + '' + self.last_name
    return [self.first_name, self.last_name].map(&:capitalize).join(" ")
  end
end
