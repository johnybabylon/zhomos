class InmailsController < ApplicationController
  def index
    @inmails = Inmail.all
  end

  def destroy
    @inmail.destroy
    respond_to do |format|
      format.html { redirect_to inmail_url, notice: 'Inmail was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  def show

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_outmail
    @outmail = Outmail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def outmail_params
    params.require(:outmail).permit(:to, :subject, :body)
  end
end
