class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.string :dob
      t.string :daylength
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.string :infant_tod
      t.text :comments
      t.integer :after_school_len
      t.boolean :attending_rec_program
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
