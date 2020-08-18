class Store < ApplicationRecord
  belongs_to :owner

  has_one_attached :logo

  has_many :addresses
  has_many :social_links
  has_many :books, through: :social_links
end
