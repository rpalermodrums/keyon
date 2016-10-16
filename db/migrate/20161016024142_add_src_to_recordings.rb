class AddSrcToRecordings < ActiveRecord::Migration[5.0]
  def change
    add_column :recordings, :src, :string
  end
end
