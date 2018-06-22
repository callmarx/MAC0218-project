class Subject < ApplicationRecord
  has_many :posts
  validates :title, presence: true
  resourcify
end
