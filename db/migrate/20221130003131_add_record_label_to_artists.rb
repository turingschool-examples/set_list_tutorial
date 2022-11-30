class AddRecordLabelToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :artists, :record_label, foreign_key: true
  end
end
