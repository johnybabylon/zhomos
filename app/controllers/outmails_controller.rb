class OutmailsController < ApplicationController
  before_action :set_outmail, only: [:show, :edit, :update, :destroy]

  def home

  end


  # GET /outmails
  # GET /outmails.json
  def index
    @outmails = Outmail.all
  end

  # GET /outmails/1
  # GET /outmails/1.json
  def show
  end

  # GET /outmails/new
  def new
    @outmail = Outmail.new
  end

  # GET /outmails/1/edit
  def edit
  end

  # POST /outmails
  # POST /outmails.json
  def create
    @outmail = Outmail.new(outmail_params)

    respond_to do |format|
      if @outmail.save
        Emailer.deliver_email(@outmail).deliver_now
        format.html { redirect_to inmails_path, notice: 'Outmail was successfully created.' }
        format.json { render :show, status: :created, location: @inmail }
      else
        format.html { render :new }
        format.json { render json: @outmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outmails/1
  # PATCH/PUT /outmails/1.json
  def update
    respond_to do |format|
      if @outmail.update(outmail_params)
        format.html { redirect_to @outmail, notice: 'Outmail was successfully updated.' }
        format.json { render :show, status: :ok, location: @outmail }
      else
        format.html { render :edit }
        format.json { render json: @outmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outmails/1
  # DELETE /outmails/1.json
  def destroy
    @outmail.destroy
    respond_to do |format|
      format.html { redirect_to outmails_url, notice: 'Outmail was successfully destroyed.' }
      format.json { head :no_content }
    end
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
