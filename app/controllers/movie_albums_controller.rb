class MovieAlbumsController < ApplicationController
  before_action :set_movie_album, only: [:show, :edit, :update, :destroy]

  # GET /movie_albums
  # GET /movie_albums.json
  def index
    @movie_albums = MovieAlbum.all
  end

  # GET /movie_albums/1
  # GET /movie_albums/1.json
  def show
  end

  # GET /movie_albums/new
  def new
    @movie_album = MovieAlbum.new
  end

  # GET /movie_albums/1/edit
  def edit
  end

  # POST /movie_albums
  # POST /movie_albums.json
  def create
    @movie_album = MovieAlbum.new(permitted_params)

    respond_to do |format|
      if @movie_album.save
        @movie_album.images.attach(params[:movie_album][:images])
        # binding.pry
        format.html { redirect_to @movie_album, notice: 'Movie album was successfully created.' }
        format.json { render :show, status: :created, location: @movie_album }
      else
        format.html { render :new }
        format.json { render json: @movie_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_albums/1
  # PATCH/PUT /movie_albums/1.json
  def update
    respond_to do |format|
      if @movie_album.update(permitted_params)
        format.html { redirect_to @movie_album, notice: 'Movie album was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_album }
      else
        format.html { render :edit }
        format.json { render json: @movie_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_albums/1
  # DELETE /movie_albums/1.json
  def destroy
    @movie_album.destroy
    respond_to do |format|
      format.html { redirect_to movie_albums_url, notice: 'Movie album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_album
      @movie_album = MovieAlbum.find(params[:id])
    end

    def permitted_params
      params.require(:movie_album).permit(:title, images: [])
    end
end
