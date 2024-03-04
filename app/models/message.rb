class Message < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :room
  belongs_to :user

  scope :sorted, -> { order(:id)}
  # Ex:- scope :active, -> {where(:active => true)}
  validates :body, presence: true
end
