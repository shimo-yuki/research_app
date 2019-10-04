class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :datas, array: true
      t.text :ffts, array: true
      t.timestamps
    end
  end
end
