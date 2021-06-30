class Actor < ApplicationRecord
  validates :first_name, length: {in: 2..100}
  validates :last_name, length: {in: 2..100}
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 13}
  validates :movie_id, presence: true

end