class AddUserToArticulos < ActiveRecord::Migration[5.0]
  def change
    add_reference :articulos, :user, foreign_key: true
  end
end
