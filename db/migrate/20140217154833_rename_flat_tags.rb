class RenameFlatTags < ActiveRecord::Migration
    def change
        rename_table :flat_tags, :flats_tags
    end
 end