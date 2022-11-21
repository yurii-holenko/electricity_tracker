class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.references :region
      t.references :city
      t.references :district

      t.string :ip_address, index: true
      t.timestamps
    end
  end
end
