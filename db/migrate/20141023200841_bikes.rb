class Bikes < ActiveRecord::Migration
  def change
  	create_table :bikes do |t|
  		t.string :brand
  		t.string :model
  		t.string :style
  		t.string :color
  		t.string :size_letter
  		t.float :size_centimeters
  		t.float :size_inches
  		t.integer :year
  		t.string :store_name
  		t.string :store_address
  		t.integer :store_zip
  		t.string :store_state
  		t.integer :zip
  		t.string :state
  		t.string :city
  		t.date :date 
  		t.text :description
  		t.string :submitter
  		t.boolean :lost
  		t.boolean :new_purchase
  		t.boolean :used_purchase
  		t.string :submitter_ip
  		t.integer :search_tally
  		t.float :submitter_latitude
  		t.float :submitter_longitude
  		t.timestamps
  	end
  end
end
