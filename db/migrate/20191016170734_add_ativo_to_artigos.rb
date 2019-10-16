class AddAtivoToArtigos < ActiveRecord::Migration[6.0]
  def change
    add_column :artigos, :ativo, :boolean
  end
end
