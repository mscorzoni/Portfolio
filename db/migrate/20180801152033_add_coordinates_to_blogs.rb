class AddCoordinatesToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :latitude, :float
    add_column :blogs, :longitude, :float
  end
end
