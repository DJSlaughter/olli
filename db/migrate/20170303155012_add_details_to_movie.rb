class AddDetailsToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :release_date, :date
    add_column :movies, :overview, :text
    add_column :movies, :poster_url, :string
    add_column :movies, :vote_average, :float
  end
end
