class CreateMusicianRecordings < ActiveRecord::Migration[5.0]
  def change
    create_table :musician_recordings do |t|
      t.integer :musician_id
      t.integer :recording_id
    end
  end
end
