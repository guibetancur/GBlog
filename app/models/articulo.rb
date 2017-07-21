class Articulo < ApplicationRecord
	validates :titular, presence: true, length: { minimum: 5 }
	validates :contenido, presence: true
end
