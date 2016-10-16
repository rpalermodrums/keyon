class AddSetlistIdToGig < ActiveRecord::Migration[5.0]
  def change
    add_column :gigs, :setlist_id, :integer
  end
end
