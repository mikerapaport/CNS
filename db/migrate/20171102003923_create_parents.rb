class CreateParents < ActiveRecord::Migration[5.1]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :cell
      t.string :email
      t.string :email2

      t.timestamps
    end
  end
end
