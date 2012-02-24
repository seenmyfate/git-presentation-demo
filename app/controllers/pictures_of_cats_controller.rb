class PicturesOfCatsController < ApplicationController
  # GET /pictures_of_cats
  # GET /pictures_of_cats.json
  def index
    @pictures_of_cats = PicturesOfCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures_of_cats }
    end
  end

  # GET /pictures_of_cats/1
  # GET /pictures_of_cats/1.json
  def show
    @pictures_of_cat = PicturesOfCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pictures_of_cat }
    end
  end

  # GET /pictures_of_cats/new
  # GET /pictures_of_cats/new.json
  def new
    @pictures_of_cat = PicturesOfCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pictures_of_cat }
    end
  end

  # GET /pictures_of_cats/1/edit
  def edit
    @pictures_of_cat = PicturesOfCat.find(params[:id])
  end

  # POST /pictures_of_cats
  # POST /pictures_of_cats.json
  def create
    @pictures_of_cat = PicturesOfCat.new(params[:pictures_of_cat])

    respond_to do |format|
      if @pictures_of_cat.save
        format.html { redirect_to @pictures_of_cat, notice: 'Pictures of cat was successfully created.' }
        format.json { render json: @pictures_of_cat, status: :created, location: @pictures_of_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @pictures_of_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pictures_of_cats/1
  # PUT /pictures_of_cats/1.json
  def update
    @pictures_of_cat = PicturesOfCat.find(params[:id])

    respond_to do |format|
      if @pictures_of_cat.update_attributes(params[:pictures_of_cat])
        format.html { redirect_to @pictures_of_cat, notice: 'Pictures of cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pictures_of_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures_of_cats/1
  # DELETE /pictures_of_cats/1.json
  def destroy
    @pictures_of_cat = PicturesOfCat.find(params[:id])
    @pictures_of_cat.destroy

    respond_to do |format|
      format.html { redirect_to pictures_of_cats_url }
      format.json { head :no_content }
    end
  end
end
