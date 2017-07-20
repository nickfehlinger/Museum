class Piece < ApplicationRecord
	belongs_to :person
	belongs_to :location
	has_many :owners
	has_many :piece_media
	has_many :piece_styles
	has_many :piece_techniques
	has_many :media, through: :piece_media
	has_many :styles, through: :piece_styles
	has_many :techniques, through: :piece_techniques
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
