class Pet < ApplicationRecord
  attr_accessor :tweet_this
  attr_accessor :share_on_facebook
  belongs_to :user

  validates :pet_type, presence: true
  validates :name, presence: true
  validates :color, presence: true
  validates :gender, presence: true
  validates :last_seen_at, presence: true

  has_many :messages, dependent: :destroy
  has_many :sightings, dependent: :destroy


  mount_uploaders :image, ImageUploader

end
