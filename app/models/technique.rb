class Technique < ApplicationRecord
	has_many :piece_techniques
	has_many :pieces, through: :piece_techniques
end
