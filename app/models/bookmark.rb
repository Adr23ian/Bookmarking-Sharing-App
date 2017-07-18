class Bookmark < ApplicationRecord
  has_and_belongs_to_many :users
    acts_as_taggable
end
