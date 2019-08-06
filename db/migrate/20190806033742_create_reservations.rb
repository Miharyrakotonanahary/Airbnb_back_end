class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :listing, index: true
    end
  end
end
