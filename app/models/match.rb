class Match < ApplicationRecord
has_many :descriptions, dependent: :destroy
has_many :users, through: :descriptions

end
