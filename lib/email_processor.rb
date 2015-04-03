class EmailProcessor
    #def self.process(email)
      #Inmail.create({ body: email.body, email: email.from })
    #end
  #end
    def self.process(email)
      new(email).process
    end

    def initialize(email)
      @email = email
    end

    def process
      create_comment
    end

    private
    attr_accessor :email

    def create_comment
      Inmail.create(email: email.from, body: email.body)
    end


  end
