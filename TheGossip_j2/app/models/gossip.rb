class Gossip < ApplicationRecord
	validates :title, length: { in: 3..14 }
	validates :content, presence: true
  belongs_to :user
  has_many :relations
  has_many :tags, through: :relations
end
