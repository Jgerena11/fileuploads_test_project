class AddMovieImagesAndTitleColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_albums, :title, :string, limit: 255, null: false
  end
end
