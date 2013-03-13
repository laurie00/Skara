class AddActiveToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :active, :boolean
  end
end
