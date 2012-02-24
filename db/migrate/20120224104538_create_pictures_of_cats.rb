class CreatePicturesOfCats < ActiveRecord::Migration
  def change
    create_table :pictures_of_cats do |t|
      t.string :image

      t.timestamps
    end
  end
end
