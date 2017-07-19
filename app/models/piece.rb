class Piece < ApplicationRecord
	has_one :artist
	has_many :owners
	has_many :media, through: :pieces_mediums
	has_many :styles, through: :pieces_styles
	has_many :techniques, through: :pieces_techniques
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
