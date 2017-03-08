class DropTableFollowers < ActiveRecord::Migration[5.0]
  def up
    drop_table :followers
  end

  def down
    create_table :followers do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
