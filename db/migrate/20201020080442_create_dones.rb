class CreateDones < ActiveRecord::Migration[6.0]
  def change
    create_table :dones do |t|
      t.integer :meeting_id,      null:false,foreign_key: true
      t.integer :hidden
      t.timestamps
    end
  end
end
