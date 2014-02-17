class CreateFlatTags < ActiveRecord::Migration
  def change
    create_table :flat_tags, id: false do |t|
      t.integer :flat_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
