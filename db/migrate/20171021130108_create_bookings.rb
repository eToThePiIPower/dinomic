class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :project, foreign_key: true
      t.date :starts_on
      t.date :ends_on
      t.integer :provider_id

      t.timestamps
    end
  end
end
