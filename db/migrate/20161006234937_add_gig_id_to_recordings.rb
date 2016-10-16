class AddGigIdToRecordings < ActiveRecord::Migration[5.0]
  def change
    add_column :recordings, :gig_id, :integer
  end
end
