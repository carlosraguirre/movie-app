class Actor < ApplicationRecord
  validates :first_name, length: {in: 2..100}
  validates :last_name, length: {in: 2..100}
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 13}

end


# Make it so that a Actor must have a first_name with a length of at least 2.
# Make it so that a Actor must have a last_name with a length of at least 2.
# Make it so that a Actor must have a known_for movie/show listed.
# Make it so that a Actor must have an age over 13 to be listed on the site.