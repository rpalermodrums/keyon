class MusicianRecording < ApplicationRecord
  belongs_to :musician
  belongs_to :recording
end
