class Style < ApplicationRecord
	has_many :piece_styles
	has_many :pieces, through: :piece_styles
end
