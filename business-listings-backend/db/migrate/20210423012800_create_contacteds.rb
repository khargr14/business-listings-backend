class CreateContacteds < ActiveRecord::Migration[6.1]
  def change
    create_table :contacteds do |t|
      t.integer  :business_id, null: false, foreign_key: true
      t.string :name
      t.string :number
      t.string :email
      t.datetime  :date
      t.string :message

      t.timestamps
      
    end
  end
end

