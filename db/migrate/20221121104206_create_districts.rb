class CreateDistricts < ActiveRecord::Migration[7.0]
  def change
    create_table :districts do |t|
      t.references :city
      t.string :name
      t.timestamps
    end
  end
end
