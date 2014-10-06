class AbcsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_abc, only: [:show, :edit, :update, :destroy]
  expose :abcs
  expose :abc
 

  # GET /abcs
  def index
    abcs = Abc.all
  end

  # GET /abcs/1
  def show
  end

  # GET /abcs/new
  def new
    abc = Abc.new
  end

  # GET /abcs/1/edit
  def edit
  end

  # POST /abcs
  def create
    abc = Abc.new(abc_params)

    if abc.save
      current_user.abcs << abc
      redirect_to abcs_url, notice: 'Dodano'
    else
      render :new
    end
  end

  # PATCH/PUT /abcs/1
  def update
    if abc.update(abc_params)
      redirect_to abc, notice: 'Zaktualizowano'
    else
      render :edit
    end
  end

  # DELETE /abcs/1
  def destroy
    abc.destroy
    redirect_to abcs_url, notice: 'Usunięto'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abc
      a = Abc.find(params[:id])
      if a.user_id == current_user.id
        abc = a
      else
        redirect_to abcs_url, notice: 'wrong url'
      end
    end

    # Only allow a trusted parameter "white list" through.
    def abc_params
      params.require(:abc).permit(:aut_thought, :mistake, :adapt_thought, :user_id)
    end
end
