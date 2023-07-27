class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    unless table_exists?(:users)
      create_table :users do |t|
        # Aquí coloca las columnas de la tabla "users"
        t.string :email
        t.string :username
        t.string :name
        t.string :password
        t.integer :role

        t.timestamps
      end
    end
  end
end
