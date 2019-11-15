class ChangeUsersToDatas < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :datas, :text, :limit => 1073741824
    change_column :users, :ffts, :text, :limit => 1073741824
  end
end
