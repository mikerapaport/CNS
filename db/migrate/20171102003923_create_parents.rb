class CreateParents < ActiveRecord::Migration[5.1]
  def change
    create_table :parents do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :cell
      t.string :email
      t.string :email2
      t.integer :user_id


      t.timestamps
    end
  end
end
