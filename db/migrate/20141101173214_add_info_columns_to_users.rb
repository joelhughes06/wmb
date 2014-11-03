class AddInfoColumnsToUsers < ActiveRecord::Migration
  def change

    add_column :users, :full_name, :string
    add_column :users, :phone, :string
    add_column :users, :zipcode, :string
    add_column :users, :alternate_email, :string
    
  end
end
