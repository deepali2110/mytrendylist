json.extract! mycart, :id, :userid, :useremail, :productid, :productname, :count, :created_at, :updated_at
json.url mycart_url(mycart, format: :json)
