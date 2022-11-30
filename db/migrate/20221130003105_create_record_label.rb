class CreateRecordLabel < ActiveRecord::Migration[5.2]
  def change
    create_table :record_labels do |t|
      t.string :name
    end
  end
end
