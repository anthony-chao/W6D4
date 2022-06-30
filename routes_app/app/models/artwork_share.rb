class ArtworkShare < ApplicationRecord

    # validates :title, uniqueness: { scope: :artist_id
    # message: "each artist can have only one art piece named with each title" }

    # validates :artwork_id, uniqueness: { scope: :viewer_id
    # message: "each artwork can only be shared with a viewer once" }

    belongs_to :viewer,
    class_name: 'User',
    foreign_key: :viewer_id

    belongs_to :artwork,
    class_name: 'Artwork',
    foreign_key: :artwork_id

end