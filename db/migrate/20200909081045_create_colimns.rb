class CreateColimns < ActiveRecord::Migration[6.0]
  def change
    create_table :colimns do |t|
      t.string :title,            null: false
      t.longtext :blog,           null: false
      t.references :user,         null: false, forgin_key: true

      t.timestamps
    end
  end
end
