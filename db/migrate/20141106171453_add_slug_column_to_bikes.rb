class AddSlugColumnToBikes < ActiveRecord::Migration
  def change

    add_column :bikes, :slug, :string
    add_column :users, :slug, :string    

  end
end
