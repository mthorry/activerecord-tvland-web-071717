# Write a migration for the shows table. A show should have a name and a genre.

class AddNameGenreToShows < ActiveRecord::Migration

  def change
    add_column :shows, :genre, :string
  end
end