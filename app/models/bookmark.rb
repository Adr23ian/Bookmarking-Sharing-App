class Bookmark < ApplicationRecord
  belongs_to :user
    acts_as_taggable
end
