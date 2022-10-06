class CreateSboys < ActiveRecord::Migration[6.1]
  def change
    create_table :sboys do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.integer :mobile
      t.text :address

      t.timestamps 
    end
  end
end
