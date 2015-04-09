json.array!(@inmails) do |inmail|
  json.extract! inmail, :id, :to, :from, :subject, :body, :headers
  json.url inmail_url(inmail, format: :json)
end
