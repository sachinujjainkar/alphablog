class Article < ApplicationRecord
    has_one_attached :avatar
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 100}

    validates :description, presence: true, length: {minimum: 10}
    validates :user_id, presence:true
    # has_many :comments, dependent: :destroy

end
