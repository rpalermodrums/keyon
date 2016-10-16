class Song < ApplicationRecord
  has_many :recording_songs
  has_many :recordings, through: :recording_songs
  has_many :setlist_songs
  has_many :setlists, through: :setlist_songs
end
