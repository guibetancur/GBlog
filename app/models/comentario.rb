# == Schema Information
#
# Table name: comentarios
#
#  id           :integer          not null, primary key
#  comentarista :string
#  contenido    :text
#  articulo_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comentario < ApplicationRecord
  	belongs_to :articulo
end
