class AddRecordingIdToGigs < ActiveRecord::Migration[5.0]
  def change
    add_column :gigs, :recording_id, :integer
  end
end
