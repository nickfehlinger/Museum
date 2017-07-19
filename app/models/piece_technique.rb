class PieceTechnique < ApplicationRecord
	belongs_to :piece 
	belongs_to :technique
end
