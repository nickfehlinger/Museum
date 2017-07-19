class Owner < ApplicationRecord
  belongs_to :person
  belongs_to :piece
end
