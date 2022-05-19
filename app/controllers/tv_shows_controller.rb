class TvShowsController < ApplicationController
  before_action :set_tv_show, only: %i[ show edit update destroy ]

  def search
    @search = TvShow.find_by("name ILIKE ?", "%#{params[:query]}%") 
  end

  def about
    @about = 'Copyright 2022'
    @tv_show = TvShow.find(params[:id])
  end

  def index
    @tv_shows = TvShow.page(params[:page])
    render json: @tv_shows, status: :ok
  end 

  def show
  end

  def new
    @tv_show = TvShow.new
  end

  def edit
  end

  def create
    byebug
    @tv_show = TvShow.new(tv_show_params)
    if @tv_show.save
        # redirect_to tv_show_url(@tv_show), notice: "Tv show was successfully created."
        render json: @tv_show , status: :ok
    else
        render :new, status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @tv_show.update(tv_show_params)
        # format.html { redirect_to tv_show_url(@tv_show), notice: "Tv show was successfully updated." }
        # format.json { render :show, status: :ok, location: @tv_show }
        render json: @tv_show , status: :ok
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tv_show.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tv_show.destroy

    respond_to do |format|
      format.html { redirect_to tv_shows_url, notice: "Tv show was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_show
      @tv_show = TvShow.find(params[:id])
    end

    def tv_show_params
      params.require(:tv_show).permit(:name, :summary, :release_date, :rating)
    end
end
