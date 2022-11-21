class CreateHealthChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :health_checks do |t|
      t.references :location
      t.boolean :success
      t.string :warning_msg
      t.string :exception_msg
      t.timestamps
    end
  end
end
