class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :category, null: false
      t.boolean :flagged, null: true
      t.timestamps null: false
    end
  end

end
