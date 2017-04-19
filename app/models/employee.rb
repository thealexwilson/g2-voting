include HTTParty

class Employee < ApplicationRecord
  has_many :votes, dependent: :destroy
end
