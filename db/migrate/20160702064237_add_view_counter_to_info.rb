class AddViewCounterToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :view_counter, :integer
  end
end
