class AuditionsController < ApplicationController
  before_action :set_audition, only: [:show, :edit, :update, :destroy]

  # GET /auditions
  # GET /auditions.json
  def index
    @auditions = Audition.all
  end

  # GET /auditions/1
  # GET /auditions/1.json
  def show
  end

  # GET /auditions/new
  def new
    @audition = Audition.new
  end

  # GET /auditions/1/edit
  def edit
  end

  # POST /auditions
  # POST /auditions.json
  def create
    @audition = Audition.new(audition_params)

    respond_to do |format|
      if @audition.save
        format.html { redirect_to @audition, notice: 'Audition was successfully created.' }
        format.json { render :show, status: :created, location: @audition }
      else
        format.html { render :new }
        format.json { render json: @audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditions/1
  # PATCH/PUT /auditions/1.json
  def update
    respond_to do |format|
      if @audition.update(audition_params)
        format.html { redirect_to @audition, notice: 'Audition was successfully updated.' }
        format.json { render :show, status: :ok, location: @audition }
      else
        format.html { render :edit }
        format.json { render json: @audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditions/1
  # DELETE /auditions/1.json
  def destroy
    @audition.destroy
    respond_to do |format|
      format.html { redirect_to auditions_url, notice: 'Audition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audition
      @audition = Audition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audition_params
      params.require(:audition).permit(:gig_id, :user_id, :comments)
    end
end
