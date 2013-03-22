class AddNavToStaticPages < ActiveRecord::Migration
  def change
    add_column :static_pages, :nav, :string
  end
end
