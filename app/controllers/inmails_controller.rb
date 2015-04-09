class InmailsController < ApplicationController
  def index
    @inmails = Inmail.all
  end

  def destroy

  end

end
