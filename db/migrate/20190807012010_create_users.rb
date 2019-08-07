class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :picture
      t.integer :age
      t.string :location
      t.integer :reputation

      t.timestamps
    end
  end
end
