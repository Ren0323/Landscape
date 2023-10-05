class CreatePhotograms < ActiveRecord::Migration[5.2]
  def change
    create_table :photograms do |t|
      t.string :title
      t.text :body
      t.float :latitude
      t.float :longitude
      t.string :image_id

      t.timestamps
    end
  end
end
