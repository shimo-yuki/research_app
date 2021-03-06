class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :frequencies, array: true, :limit => 165535
      t.text :ffts, array: true, :limit => 165535
      t.timestamps
    end
  end
end
