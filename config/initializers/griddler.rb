Griddler.configure do |config|
  config.processor_class = EmailProcessor
  config.processor_method = :process
  config.reply_delimiter = '--reply above this line--'
  config.email_service = :mandrill

end