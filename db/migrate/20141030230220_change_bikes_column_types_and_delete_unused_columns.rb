class ChangeBikesColumnTypesAndDeleteUnusedColumns < ActiveRecord::Migration
  def change

    add_column :bikes, :inquiry_reason, :string
    add_column :bikes, :lat_long, :string

  end
end
