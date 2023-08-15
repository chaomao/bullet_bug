class CreatorsController < ApplicationController
  before_action :set_creator, only: [:show, :edit, :update, :destroy]

  # GET /creators
  def index
    @creators = Creator.all
  end

  # GET /creators/1
  def show
  end

  # GET /creators/new
  def new
    @creator = Creator.new
  end

  # GET /creators/1/edit
  def edit
  end

  # POST /creators
  def create
    @creator = Creator.new(creator_params)

    if @creator.save
      redirect_to @creator, notice: 'Creator was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /creators/1
  def update
    if @creator.update(creator_params)
      redirect_to @creator, notice: 'Creator was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /creators/1
  def destroy
    @creator.destroy
    redirect_to creators_url, notice: 'Creator was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creator
      @creator = Creator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def creator_params
      params.require(:creator).permit(:name, :comment_id)
    end
end
