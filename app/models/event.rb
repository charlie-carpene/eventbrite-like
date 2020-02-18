class Event < ApplicationRecord
  has_many :attendances

  validates :start_date,
    presence: true

  validates :duration,
    presence: true,
    numericality: true,
    numericality: {
      greater_than: 0 #, qual_to: %5
    }

  validates  :title,
    presence: true,
    length: {
      in: 5..140
    }

  validates :description,
    presence: true,
    length: {
      in: 20..1000
    }

  validates :price,
    presence:  true,
    numericality: true,
    numericality: {
      greater_than: 1,
      less_than: 1000
    }

  validates :location,
    presence: true
end
