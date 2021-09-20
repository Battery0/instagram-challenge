class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /@{1}/ }
  validates :password, presence: true, length: { in: 8..20 }
end