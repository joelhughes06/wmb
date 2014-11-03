class AddSerialNumberToBikes < ActiveRecord::Migration
  def change
  	add_column :bikes, :serial_number, :string
  end
end
