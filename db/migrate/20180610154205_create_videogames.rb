class CreateVideogames < ActiveRecord::Migration[5.2]
  def change
    create_table :videogames do |t|
      t.string :title
      t.string :summary
      t.string :image

      t.timestamps
    end
  end
end
