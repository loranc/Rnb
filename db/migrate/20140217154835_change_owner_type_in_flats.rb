class ChangeOwnerTypeInUsers < ActiveRecord::Migration
    def change
        change_column :flats, :owner_id, :reference
    end
 end