class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  has_many_attached :covers

  has_many :rates
  has_many :reviews
  has_many :social_links
  has_many :stores, through: :social_links
end
