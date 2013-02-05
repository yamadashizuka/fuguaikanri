class FuguaisController < ApplicationController
  #業務選択画面用メソッド
  def gyosen
  end

  # GET /fuguais
  # GET /fuguais.json
  def index
    @fuguais = Fuguai.all
    a_hash = Hash.new
    b_hash = Hash.new    
    c_hash = Hash.new    

    @fuguais.each do |fuguai|
     a_hash[fuguai.status_kubun] = fuguai.status_kubun
     b_hash[fuguai.hakosya] = fuguai.hakosya
     c_hash[fuguai.hako_ymd] = fuguai.hako_ymd
    end
    
    @statuses = a_hash
    @hakosyas = b_hash
    @hakoymds = c_hash
   
    
    
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
  
  def new2
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
  
  def search
    condition_status = params['drop_list']['status']
    condition_hakosya = params['drop_list']['hakosya']
    condition_hakoymd = params['drop_list']['hakoymd']
    
    if !(condition_status.nil?)
       @fuguais = Fuguai.where("status_kubun = ?", condition_status)
    end
    
    if !(condition_hakosya.nil?)
    @fuguais = Fuguai.where("hakosya = ?", condition_hakosya)
    end
    
    if !(condition_hakoymd.nil?)
    @fuguais = Fuguai.where("hako_ymd = ?", condition_hakoymd)
    end

    a_hash = Hash.new
    b_hash = Hash.new
    c_hash = Hash.new
    
    @fuguais.each do |fuguai|
     a_hash[fuguai.status_kubun] = fuguai.status_kubun
     b_hash[fuguai.hakosya] = fuguai.hakosya
     c_hash[fuguai.hako_ymd] = fuguai.hako_ymd
    end
    @statuses = a_hash 
    @hakosyas = b_hash
    @hakoymds = c_hash

    render action: "index"
  end
  
end
