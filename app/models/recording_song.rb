class RecordingSong < ApplicationRecord
  belongs_to :song
  belongs_to :recording
end
