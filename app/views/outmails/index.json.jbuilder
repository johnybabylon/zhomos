json.array!(@outmails) do |outmail|
  json.extract! outmail, :id, :to, :subject, :body
  json.url outmail_url(outmail, format: :json)
end
