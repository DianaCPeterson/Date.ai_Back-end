class User < ApplicationRecord
# has_secure_password
has_many :descriptions
has_many :matches, through: :descriptions

has_secure_password
end
