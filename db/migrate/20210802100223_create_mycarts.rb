class CreateMycarts < ActiveRecord::Migration[6.1]
  def change
    create_table :mycarts do |t|
      t.string :userid
      t.string :useremail
      t.string :productid
      t.string :productname
      t.integer :count

      t.timestamps
    end
  end
end
