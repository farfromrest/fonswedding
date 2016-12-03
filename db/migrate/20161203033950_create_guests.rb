class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :token
      t.boolean :rsvpd, default: false
      t.references :guest, foreign_key: true, references: :guests
      t.timestamps
    end
  end
end
