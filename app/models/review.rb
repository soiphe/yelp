class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates_presence_of :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: (0..5), allow_nil: false }, numericality: { only_integer: true }
end
