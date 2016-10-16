class Gig < ApplicationRecord
  has_many :musician_gigs
  has_many :musicians, through: :musician_gigs
  has_one :recording
  has_one :setlist
end
