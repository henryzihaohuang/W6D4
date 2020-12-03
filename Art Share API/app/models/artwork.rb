class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: { scope: :artist_id, message: "an artist should only have unique titles"}

    validates :artist_id, presence: true
    

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User,
        primary_key: :id

    has_many :shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare
        
    has_many :shared_viewers,
        through: :shares,
        source: :viewer
end