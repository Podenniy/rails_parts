class MainPartsController < ApplicationController
  before_action :set_main_part, only: [:show, :edit, :update, :destroy]

  # GET /main_parts
  # GET /main_parts.json
  def index
    @main_parts = MainPart.all
  end

  # GET /main_parts/1
  # GET /main_parts/1.json
  def show
  end

  # GET /main_parts/new
  def new
    @main_part = MainPart.new
  end

  # GET /main_parts/1/edit
  def edit
  end

  # POST /main_parts
  # POST /main_parts.json
  def create
    @main_part = MainPart.new(main_part_params)

    respond_to do |format|
      if @main_part.save
        format.html { redirect_to @main_part, notice: 'Main part was successfully created.' }
        format.json { render action: 'show', status: :created, location: @main_part }
      else
        format.html { render action: 'new' }
        format.json { render json: @main_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_parts/1
  # PATCH/PUT /main_parts/1.json
  def update
    respond_to do |format|
      if @main_part.update(main_part_params)
        format.html { redirect_to @main_part, notice: 'Main part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @main_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_parts/1
  # DELETE /main_parts/1.json
  def destroy
    @main_part.destroy
    respond_to do |format|
      format.html { redirect_to main_parts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_part
      @main_part = MainPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_part_params
      params.require(:main_part).permit(:name_parts, :brand, :code_part, :code_parts_advanced, :ean, :status_product, :name_image, :additional_data, :art_cross)
    end
end
