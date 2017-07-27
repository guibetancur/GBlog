# == Schema Information
#
# Table name: articulos
#
#  id         :integer          not null, primary key
#  titular    :string
#  contenido  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Articulo < ApplicationRecord
	has_many :comentarios
	
	validates :titular, presence: true, length: { minimum: 5 }
	validates :contenido, presence: true
end
