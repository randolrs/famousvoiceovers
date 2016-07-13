class CelebsController < ApplicationController
  before_action :set_celeb, only: [:show, :edit, :update, :destroy]

  # GET /celebs
  # GET /celebs.json
  def index
    @celebs = Celeb.all
  end

  # GET /celebs/1
  # GET /celebs/1.json
  def show
  end

  # GET /celebs/new
  def new
    @celeb = Celeb.new
  end

  # GET /celebs/1/edit
  def edit
  end

  # POST /celebs
  # POST /celebs.json
  def create
    @celeb = Celeb.new(celeb_params)

    respond_to do |format|
      if @celeb.save
        format.html { redirect_to @celeb, notice: 'Celeb was successfully created.' }
        format.json { render :show, status: :created, location: @celeb }
      else
        format.html { render :new }
        format.json { render json: @celeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebs/1
  # PATCH/PUT /celebs/1.json
  def update
    respond_to do |format|
      if @celeb.update(celeb_params)
        format.html { redirect_to @celeb, notice: 'Celeb was successfully updated.' }
        format.json { render :show, status: :ok, location: @celeb }
      else
        format.html { render :edit }
        format.json { render json: @celeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebs/1
  # DELETE /celebs/1.json
  def destroy
    @celeb.destroy
    respond_to do |format|
      format.html { redirect_to celebs_url, notice: 'Celeb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celeb
      @celeb = Celeb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celeb_params
      params.require(:celeb).permit(:first_name, :last_name, :full_name, :celeb_category_id)
    end
end
