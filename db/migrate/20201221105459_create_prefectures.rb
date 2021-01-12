class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.string :explanation
      t.string :image

      t.timestamps
    end
  end
end
