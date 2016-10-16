class CreateRecordingSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :recording_songs do |t|
      t.integer :recording_id
      t.integer :song_id

      t.timestamps
    end
  end
end
