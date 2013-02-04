class FuguaisController < ApplicationController
  # GET /fuguais
  # GET /fuguais.json
  def index
    @fuguais = Fuguai.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fuguais }
    end
  end

  # GET /fuguais/1
  # GET /fuguais/1.json
  def show
    @fuguai = Fuguai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fuguai }
    end
  end

  # GET /fuguais/new
  # GET /fuguais/new.json
  def new
    @fuguai = Fuguai.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fuguai }
    end
  end

  # GET /fuguais/1/edit
  def edit
    @fuguai = Fuguai.find(params[:id])
  end

  # POST /fuguais
  # POST /fuguais.json
  def create
    @fuguai = Fuguai.new(params[:fuguai])

    respond_to do |format|
      if @fuguai.save
        format.html { redirect_to @fuguai, notice: 'Fuguai was successfully created.' }
        format.json { render json: @fuguai, status: :created, location: @fuguai }
      else
        format.html { render action: "new" }
        format.json { render json: @fuguai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fuguais/1
  # PUT /fuguais/1.json
  def update
    @fuguai = Fuguai.find(params[:id])

    respond_to do |format|
      if @fuguai.update_attributes(params[:fuguai])
        format.html { redirect_to @fuguai, notice: 'Fuguai was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fuguai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuguais/1
  # DELETE /fuguais/1.json
  def destroy
    @fuguai = Fuguai.find(params[:id])
    @fuguai.destroy

    respond_to do |format|
      format.html { redirect_to fuguais_url }
      format.json { head :no_content }
    end
  end
end
