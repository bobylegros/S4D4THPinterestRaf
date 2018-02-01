class User < ApplicationRecord

  validates :name, presence: true,
                    lenght: {minimum: 5, maximum: 20},
                    uniqueness: true

  validates :mail, presence: true,
                    lenght: {minimum: 5, maximum: 60}

  has_many :pins
end
