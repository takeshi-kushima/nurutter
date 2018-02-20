class NuruttersController < ApplicationController
  before_action :set_nurutter, only: [:show, :edit, :update, :destroy]

  # GET /nurutters
  # GET /nurutters.json
  def index
    @nurutters = Nurutter.all
  end

  # GET /nurutters/1
  # GET /nurutters/1.json
  def show
  end

  # GET /nurutters/new
  def new
    @nurutter = Nurutter.new
    if params[:back]
      @nurutter = Nurutter.new(nurutter_params)
    else
      @nurutter = Nurutter.new
    end
  end

  # GET /nurutters/1/edit
  def edit
  end

  # POST /nurutters
  # POST /nurutters.json
  def create
    @nurutter = Nurutter.new(nurutter_params)

    respond_to do |format|
      if @nurutter.save
        format.html { redirect_to @nurutter, notice: '投稿しました' }
        format.json { render :show, status: :created, location: @nurutter }
      else
        format.html { render :new }
        format.json { render json: @nurutter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nurutters/1
  # PATCH/PUT /nurutters/1.json
  def update
    
    respond_to do |format|
      if @nurutter.update(nurutter_params)
        format.html { redirect_to @nurutter, notice: '投稿しました' }
        format.json { render :show, status: :ok, location: @nurutter }
      else
        format.html { render :edit }
        format.json { render json: @nurutter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nurutters/1
  # DELETE /nurutters/1.json
  def destroy
    @nurutter.destroy
    respond_to do |format|
      format.html { redirect_to nurutters_url, notice: '投稿を削除しました' }
      format.json { head :no_content }
    end
  end
  
   def confirm
    @nurutter = Nurutter.new(nurutter_params)
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nurutter
      @nurutter = Nurutter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nurutter_params
      params.require(:nurutter).permit(:content)
    end
end
