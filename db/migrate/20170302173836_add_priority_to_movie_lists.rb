class AddPriorityToMovieLists < ActiveRecord::Migration[5.0]
  def change
    add_column :movie_lists, :priority, :integer
  end
end
