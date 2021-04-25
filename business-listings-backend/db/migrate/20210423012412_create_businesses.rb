class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :industry
      

      t.timestamps
    end
  end
end
