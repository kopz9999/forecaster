class CreateForecasts < ActiveRecord::Migration[7.0]
  def change
    create_table :forecasts do |t|
      t.string :street
      t.string :street2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :request_date
      t.decimal :temperature

      t.timestamps
    end
  end
end
