class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependant: :destroy
end
