class Person < ApplicationRecord
	has_many :pieces #, class_name: 'Piece', foreign_key: :pieces_id
end
