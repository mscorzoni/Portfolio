class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  enum status: { draft: 0, published: 1}

  validates_presence_of :title, :body
  belongs_to :topic
  
  has_many :comments, dependent: :destroy

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end
