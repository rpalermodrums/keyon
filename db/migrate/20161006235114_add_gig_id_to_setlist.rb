class AddGigIdToSetlist < ActiveRecord::Migration[5.0]
  def change
    add_column :setlists, :gig_id, :integer
  end
end
