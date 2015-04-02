class EmailProcessor
  def self.process(email)
    Inmail.create!({ body: email.body, email: email.from })
  end
end