class SchemesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_scheme, only: [:show, :edit, :update, :destroy]


  # GET /schemes
  def index
    @schemes = Scheme.all
  end

  # GET /schemes/1
  def show
  end

  # GET /schemes/new
  def new
    @scheme = Scheme.new
  end

  # GET /schemes/1/edit
  def edit
  end

  # POST /schemes
  def create
    @scheme = Scheme.new(scheme_params)

    if @scheme.save
      redirect_to @scheme, notice: 'Scheme was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /schemes/1
  def update
    if @scheme.update(scheme_params)
      redirect_to @scheme, notice: 'Scheme was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /schemes/1
  def destroy
    @scheme.destroy
    redirect_to schemes_url, notice: 'Scheme was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheme
      @scheme = Scheme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scheme_params
      params.require(:scheme).permit(:user_id, :name, :initiator, :emotions, :thoughts, :behaviour, :my_scheme, :h_thought_text, :r_worry, :o_reaction, :h_behaviour, :belief)
    end
end
