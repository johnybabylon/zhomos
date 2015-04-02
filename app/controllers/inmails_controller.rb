class InmailsController < ApplicationController
  def index
    @inmails = Inmail.all
  end
end
