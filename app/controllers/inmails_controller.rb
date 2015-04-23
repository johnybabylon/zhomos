class InmailsController < ApplicationController

  before_action :set_inmail, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
    @inmails = Inmail.all
  end

  def destroy
    @inmail.destroy
    respond_to do |format|
      format.html { redirect_to inmails_path, notice: 'Inmail was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  def update

  end

  def show

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_inmail
    @inmail = Inmail.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def inmail_params
    params.require(:inmail).permit(:to, :subject, :body)
  end
end
