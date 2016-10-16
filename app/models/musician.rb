class Musician < ApplicationRecord
  has_many :musician_gigs
  has_many :gigs, through: :musician_gigs
  has_many :musician_recordings
  has_many :recordings, through: :musician_recordings
end
