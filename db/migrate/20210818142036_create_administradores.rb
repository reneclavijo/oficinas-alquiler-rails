class CreateAdministradores < ActiveRecord::Migration[6.1]
  def change
    create_table :administradores do |t|
      t.string :nombre_usuario
      t.string :password_digest

      t.timestamps
    end
  end
end
