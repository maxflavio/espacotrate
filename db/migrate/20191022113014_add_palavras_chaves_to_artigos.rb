class AddPalavrasChavesToArtigos < ActiveRecord::Migration[6.0]
  def change
    add_column :artigos, :palavras_chave, :string
  end
end
