class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :firstname
      t.string :lastname
      t.string :dob
      t.string :status
      t.string :program
      t.string :time
      t.integer :week
      t.boolean :mtwrf #no neccessary
      t.boolean :mwf #no neccessary
      t.boolean :tr #no neccessary
      t.boolean :m2
      t.boolean :m3 #no neccessary
      t.boolean :t2
      t.boolean :t3 #no neccessary
      t.boolean :w2
      t.boolean :w3 #no neccessary
      t.boolean :r2
      t.boolean :r3 #no neccessary
      t.boolean :f2
      t.boolean :f3 #no neccessary
      t.boolean :full #no neccessary
      t.boolean :half_morning #no neccessary
      t.boolean :half_afternoon #no neccessary
      t.text :comments
      t.boolean :attending_rec
      t.boolean :w1
      t.boolean :w2
      t.boolean :w3
      t.boolean :w4
      t.boolean :w5
      t.boolean :w6
      t.boolean :w7
      t.boolean :w8
      t.integer :parent_id

      t.timestamps
    end
  end
end
