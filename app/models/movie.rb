class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, length: {in: 10..500}
  validates :director, presence: true, length: {in: 2..500}
  validates :year, presence: true

end
