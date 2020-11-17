class AddTitleToFishcatch < ActiveRecord::Migration[6.0]
  def change
    add_column :fishcatches, :title, :string
  end
end
