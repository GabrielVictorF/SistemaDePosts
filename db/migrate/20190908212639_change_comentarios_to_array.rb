class ChangeComentariosToArray < ActiveRecord::Migration[6.0]
  def change
  	add_column :posts, :comentarios_post, :string, array: true, default: [] 
  end
end
