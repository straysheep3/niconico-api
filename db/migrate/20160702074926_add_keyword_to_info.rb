class AddKeywordToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :keyword, :string
  end
end
