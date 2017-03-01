class List < ApplicationRecord
  belongs_to :user
  has_many :movie_lists, foreign_key: :list_id
end
