class AddUrlToArtigos < ActiveRecord::Migration[6.0]
  def change
    add_column :artigos, :url, :string
  end
end
