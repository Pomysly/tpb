class MoodentriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_moodentry, only: [:show, :edit, :update, :destroy]
  expose :user
  expose :moodentry
  expose :moodentries
  # GET /moodentries
  def index
    moodentries = Moodentry.all.where(user_id: current_user)
  end

  # GET /moodentries/1
  def show
  end

  # GET /moodentries/new
  def new
    @moodentry = Moodentry.new
  end

  # GET /moodentries/1/edit
  def edit
  end

  # POST /moodentries
  def create
    self.moodentry = Moodentry.new(moodentry_params)

    if moodentry.save
      current_user.moodentries << moodentry
      redirect_to moodentries_url(user), notice: 'Moodentry was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /moodentries/1
  def update
    if @moodentry.update(moodentry_params)
      redirect_to moodentries_url(user), notice: 'Moodentry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /moodentries/1
  def destroy
    @moodentry.destroy
    redirect_to user_moodentries_url(user), notice: 'Moodentry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moodentry
      @moodentry = Moodentry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def moodentry_params
      params.require(:moodentry).permit(:date, :note, :mood, :user_id)
    end
end
