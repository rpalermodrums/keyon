class Recording < ApplicationRecord
  has_many :recording_songs
  has_many :songs, through: :recording_songs
  belongs_to :gig
end
