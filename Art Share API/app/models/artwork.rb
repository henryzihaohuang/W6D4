class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: { scope: :artist_id, message: "an artist should only have unique titles"}

    validates :artist_id, presence: true, uniqueness: true
    

    belongs_to :artist
        foreign_key: :artist_id,
        class_name: :User
        primary_key: :id
    
end