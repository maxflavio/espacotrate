class CreateDepoimentos < ActiveRecord::Migration[6.0]
  def change
    create_table :depoimentos do |t|
      t.string :texto
      t.string :nome_pessoa

      t.timestamps
    end
  end
end
