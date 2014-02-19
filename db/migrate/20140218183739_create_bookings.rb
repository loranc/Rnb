class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings, id: false do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :booker_id, index: true
      t.belongs_to :flat_id, index: true

      t.timestamps
    end
  end
end
