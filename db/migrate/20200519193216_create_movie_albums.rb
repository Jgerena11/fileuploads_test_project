class CreateMovieAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_albums do |t|

      t.timestamps
    end
  end
end
