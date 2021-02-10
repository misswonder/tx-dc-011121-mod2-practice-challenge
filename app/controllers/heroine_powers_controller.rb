class HeroinePowersController < ApplicationController
  before_action :set_heroine_power, only: [:show, :edit, :update, :destroy]

  # GET /heroine_powers
  # GET /heroine_powers.json
  def index
    @heroine_powers = HeroinePower.all
  end

  # GET /heroine_powers/1
  # GET /heroine_powers/1.json
  def show
  end

  # GET /heroine_powers/new
  def new
    @heroine_power = HeroinePower.new
  end

  # GET /heroine_powers/1/edit
  def edit
  end

  # POST /heroine_powers
  # POST /heroine_powers.json
  def create
    @heroine_power = HeroinePower.new(heroine_power_params)

    if @heroine_power.valid?
      @heroine_power.save
      redirect_to heroine_path(@heroine_power.heroine_id)
      # redirect_to heroine_path(@heroine_power.heroine)
    else 
      # render :new POST /heroione_power => new form
      flash[:errors] = @heroine_power.errors.full_messages 
      redirect_to new_heroine_power_path
    end 
  end 

  #   if @heroine_power.save
  #       format.html { redirect_to @heroine_power, notice: 'Heroine power was successfully created.' }
  #       format.json { render :show, status: :created, location: @heroine_power }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @heroine_power.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /heroine_powers/1
  # PATCH/PUT /heroine_powers/1.json
  def update
    respond_to do |format|
      if @heroine_power.update(heroine_power_params)
        format.html { redirect_to @heroine_power, notice: 'Heroine power was successfully updated.' }
        format.json { render :show, status: :ok, location: @heroine_power }
      else
        format.html { render :edit }
        format.json { render json: @heroine_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heroine_powers/1
  # DELETE /heroine_powers/1.json
  def destroy
    @heroine_power.destroy
    respond_to do |format|
      format.html { redirect_to heroine_powers_url, notice: 'Heroine power was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heroine_power
      @heroine_power = HeroinePower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heroine_power_params
      params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end
end
