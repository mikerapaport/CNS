class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :firstname
      t.string :lastname
      t.string :dob
      t.string :status #Child age program
      t.string :program #Summmer or ten month
      t.string :time #Full day, half day, other half day
      t.integer :week #5 day, 3 day, 2 day
      t.boolean :m2 #after school: 2 hours is true, 3 hours if false, day not chosen if nil
      t.boolean :t2 #after school: 2 hours is true, 3 hours if false, day not chosen if nil
      t.boolean :w2 #after school: 2 hours is true, 3 hours if false, day not chosen if nil
      t.boolean :r2 #after school: 2 hours is true, 3 hours if false, day not chosen if nil
      t.boolean :f2 #after school: 2 hours is true, 3 hours if false, day not chosen if nil
      t.text :comments
      t.boolean :attending_rec
      t.boolean :week1 #Summer weeks
      t.boolean :week2
      t.boolean :week3
      t.boolean :week4
      t.boolean :week5
      t.boolean :week6
      t.boolean :week7
      t.boolean :week8
      t.integer :parent_id

      t.timestamps
    end
  end
end
