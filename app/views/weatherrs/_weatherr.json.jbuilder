json.extract! weatherr, :id, :date, :created_at, :updated_at
json.url weatherr_url(weatherr, format: :json)