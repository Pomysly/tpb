class SchemasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_schema, only: [:show, :edit, :update, :destroy]
  expose :user
  expose :schema
  expose :schemas


  # GET /schemas
  def index
    schemas = Schema.all
  end

  # GET /schemas/1
  def show
  end

  # GET /schemas/new
  def new
    schema = Schema.new
  end

  # GET /schemas/1/edit
  def edit
  end

  # POST /schemas
  def create
    schema = Schema.new(schema_params)

    if schema.save
      current_user.schemas << schema
      redirect_to schema, notice: 'Dodano nowy schemat'
    else
      render :new
    end
  end

  # PATCH/PUT /schemas/1
  def update
    if schema.update(schema_params)
      redirect_to schema, notice: 'Zaktualizowano'
    else
      render :edit
    end
  end

  # DELETE /schemas/1
  def destroy
    schema.destroy
    redirect_to schemas_url, notice: 'schemat został usunięty'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schema
      s = Schema.find(params[:id]) if user_id = current_user
      if s.user_id == current_user.id
        schema = s
      else
        redirect_to schemas_url, notice: 'wrong url'
      end
    end

    # Only allow a trusted parameter "white list" through.
    def schema_params
      params.require(:schema).permit(:user_id, :name, :initiator, :emotions, :thoughts, :behaviour, :my_schema, :h_thought_text, :r_worry, :o_reaction, :h_behaviour, :belief)
    end
end
