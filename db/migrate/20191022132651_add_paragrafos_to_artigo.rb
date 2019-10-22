class AddParagrafosToArtigo < ActiveRecord::Migration[6.0]
  def change
    add_column :artigos, :paragrafo1, :string
    add_column :artigos, :paragrafo2, :string
    add_column :artigos, :paragrafo3, :string
    add_column :artigos, :paragrafo4, :string
    add_column :artigos, :paragrafo5, :string
    add_column :artigos, :paragrafo6, :string
    add_column :artigos, :paragrafo7, :string
    add_column :artigos, :paragrafo8, :string
  end
end
