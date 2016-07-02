class AddThumbnailToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :thumbnail, :string
  end
end
