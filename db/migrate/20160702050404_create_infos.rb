class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :cmsid
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
