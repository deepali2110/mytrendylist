class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :p_name
      t.string :p_price
      t.string :p_dprice
      t.string :p_details
      t.string :p_image

      t.timestamps
    end
  end
end
