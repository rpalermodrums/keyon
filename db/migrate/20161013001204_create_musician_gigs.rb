class CreateMusicianGigs < ActiveRecord::Migration[5.0]
  def change
    create_table :musician_gigs do |t|
      t.integer :musician_id
      t.integer :gig_id
    end
  end
end
