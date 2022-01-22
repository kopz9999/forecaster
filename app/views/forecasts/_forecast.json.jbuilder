json.extract! forecast, :id, :street, :street2, :city, :state, :postal_code, :request_date, :temperature, :created_at, :updated_at
json.url forecast_url(forecast, format: :json)
