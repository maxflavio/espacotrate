class CreateArtigos < ActiveRecord::Migration[6.0]
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end
