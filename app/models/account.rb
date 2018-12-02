class Account < ApplicationRecord
  has_many :proposes
  has_many :venues, through: :proposes 
end
