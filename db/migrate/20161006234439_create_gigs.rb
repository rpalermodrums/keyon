class CreateGigs < ActiveRecord::Migration[5.0]
  def change
    create_table :gigs do |t|
      t.string :date
      t.string :location
      t.string :time

      t.timestamps
    end
  end
end
