class BecksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beck, only: [:show, :edit, :update, :destroy]
  expose :beck
  expose :becks
  expose :user
  # GET /becks

  def index
    becks = Beck.all.where(user_id: current_user)
  end

  # GET /becks/1
  def show
  end

  # GET /becks/new
  def new
    @beck = Beck.new
  end

  # GET /becks/1/edit
  def edit
  end

  # POST /becks
  def create
    self.beck = Beck.new(beck_params)

    if beck.save
      current_user.becks << beck
      redirect_to becks_path, notice: 'Dodano nową wartość'
    else
      render :new
    end
  end

  # PATCH/PUT /becks/1
  def update
    if beck.update(beck_params)
      redirect_to becks_url, notice: 'Zaktualizowano'
    else
      render :edit
    end
  end

  # DELETE /becks/1
  def destroy
    beck.destroy
    redirect_to becks_url, notice: 'Usunięto'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beck
      b = Beck.find(params[:id]) 
      if b.user_id == current_user.id
        back = b
      else
        redirect_to becks_url, notice: 'wrong url'
      end
    end

    # Only allow a trusted parameter "white list" through.
    def beck_params
      params.require(:beck).permit(:date, :notes, :value, :user_id)
    end
end
