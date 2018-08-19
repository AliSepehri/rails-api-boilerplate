class User < ApplicationRecord
  # validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
