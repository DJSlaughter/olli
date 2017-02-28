class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
