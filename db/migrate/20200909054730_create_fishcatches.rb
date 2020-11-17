class CreateFishcatches < ActiveRecord::Migration[6.0]
  def change
    create_table :fishcatches do |t|
      t.integer :location_id,         null:false
      t.integer :field_id,            null:false
      t.string :fish_name,            null:true
      t.string :fishingmethod,        null:true
      t.text   :text,                 null:true
      t.references :user,           null:false, foreign_key:true

      t.timestamps
    end
  end
end
