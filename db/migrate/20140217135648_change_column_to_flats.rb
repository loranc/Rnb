class ChangeColumnToFlats < ActiveRecord::Migration
  def change
    change_column :flats, :day_price, :numeric
  end
end
