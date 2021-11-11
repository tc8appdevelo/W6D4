class Artwork < ApplicationRecord
    validates :artist_id, presence: true
    validates :image_url, presence: true
    validates :title, presence: true
end
