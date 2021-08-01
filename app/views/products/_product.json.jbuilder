json.extract! product, :id, :p_name, :p_price, :p_dprice, :p_details, :p_image, :created_at, :updated_at
json.url product_url(product, format: :json)
