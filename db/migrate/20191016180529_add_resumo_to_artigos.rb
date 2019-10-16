class AddResumoToArtigos < ActiveRecord::Migration[6.0]
  def change
    add_column :artigos, :resumo, :string
  end
end
