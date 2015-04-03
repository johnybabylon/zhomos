class EmailProcessor
    def self.process(email)
      Inmail.create!({ body: email.body, from: email.from })
    end
  end

