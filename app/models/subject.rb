class Subject < ApplicationRecord
  has_many :posts
  validates :title, :specification, presence: true
end
