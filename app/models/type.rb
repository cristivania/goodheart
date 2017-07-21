class Type < ApplicationRecord
  belongs_to :donors
  belongs_to :health_provider
end
