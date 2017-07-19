class Medium < ApplicationRecord
	has_many :piece_media
	has_many :pieces, through: :piece_media
end
