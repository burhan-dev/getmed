class Product < ApplicationRecord
  validates :med_pic, presence: :true
  belongs_to :category
  has_one_attached :med_pic
  has_many :items, dependent: :destroy
end
