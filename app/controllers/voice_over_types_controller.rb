class VoiceOverTypesController < ApplicationController
  before_action :set_voice_over_type, only: [:show, :edit, :update, :destroy]

  # GET /voice_over_types
  # GET /voice_over_types.json
  def index
    @voice_over_types = VoiceOverType.all
  end

  # GET /voice_over_types/1
  # GET /voice_over_types/1.json
  def show
  end

  # GET /voice_over_types/new
  def new
    @voice_over_type = VoiceOverType.new
  end

  # GET /voice_over_types/1/edit
  def edit
  end

  # POST /voice_over_types
  # POST /voice_over_types.json
  def create
    @voice_over_type = VoiceOverType.new(voice_over_type_params)

    respond_to do |format|
      if @voice_over_type.save
        format.html { redirect_to @voice_over_type, notice: 'Voice over type was successfully created.' }
        format.json { render :show, status: :created, location: @voice_over_type }
      else
        format.html { render :new }
        format.json { render json: @voice_over_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voice_over_types/1
  # PATCH/PUT /voice_over_types/1.json
  def update
    respond_to do |format|
      if @voice_over_type.update(voice_over_type_params)
        format.html { redirect_to @voice_over_type, notice: 'Voice over type was successfully updated.' }
        format.json { render :show, status: :ok, location: @voice_over_type }
      else
        format.html { render :edit }
        format.json { render json: @voice_over_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_over_types/1
  # DELETE /voice_over_types/1.json
  def destroy
    @voice_over_type.destroy
    respond_to do |format|
      format.html { redirect_to voice_over_types_url, notice: 'Voice over type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_over_type
      @voice_over_type = VoiceOverType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voice_over_type_params
      params.require(:voice_over_type).permit(:name)
    end
end
