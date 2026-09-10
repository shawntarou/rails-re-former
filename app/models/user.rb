class User < ApplicationRecord
  validates :username, :password,
            length: { minimum: 2, maximum: 16 },
            uniqueness: true,
            presence: true,
            format: { with: /\A[a-zA-Z0-9]+\z/ } # a-z, A-Z, 0-9, no spaces
  validates :email,
            length: { minimum: 4, maximum: 16 },
            uniqueness: true,
            presence: true,
            format: { with: /\A[a-zA-Z0-9@]+\z/ } # a-z, A-Z, 0-9, @, no spaces
end
