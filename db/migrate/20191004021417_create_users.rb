class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :datas, array: true, :limit => 4294967295
      t.text :ffts, array: true, :limit => 4294967295
      t.timestamps
    end
  end
end
