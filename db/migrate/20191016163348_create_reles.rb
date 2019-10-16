class CreateReles < ActiveRecord::Migration[6.0]
  def change
    create_table :reles do |t|
      t.string :id_rele
      t.string :nome
      t.boolean :ligado

      t.timestamps
    end
  end
end
