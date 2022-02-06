class Project < ApplicationRecord
  has_many :features, dependent: :destroy
  has_one_attached :photo
  has_one_attached :photo_description
end
