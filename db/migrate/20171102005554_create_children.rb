class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.string :dob
      t.string :status
      t.string :program
      t.string :time
      t.boolean :mtwrf
      t.boolean :mwf
      t.boolean :tr
      t.boolean :m2
      t.boolean :m3
      t.boolean :t2
      t.boolean :t3
      t.boolean :w2
      t.boolean :w3
      t.boolean :r2
      t.boolean :r3
      t.boolean :f2
      t.boolean :f3
      t.boolean :full
      t.boolean :half_morning
      t.boolean :half_afternoon
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
