class Comment < ApplicationRecord
  validates :auteur, presence: true,
                    lenght: {minimum: 5, maximum: 20},
                    uniqueness: true

  validates :content, presence: true,
                    lenght: {minimum: 5, maximum: 140}


  belongs_to :pin
end
