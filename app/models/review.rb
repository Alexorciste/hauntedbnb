class Review < ApplicationRecord
  belongs_to :hauntedhouse
  belongs_to :user
end
