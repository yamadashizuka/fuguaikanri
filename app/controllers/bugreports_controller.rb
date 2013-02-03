# encording: UTF-8

class BugreportsController < ApplicationController

#業務選択画面用メソッド
  def top
  end

#ログアウト用メソッド
  def logout
    reset_session
  end

  # GET /bugreports
  # GET /bugreports.json
  def index
    @bugreports = Bugreport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bugreports }
    end
  end

  # GET /bugreports/1
  # GET /bugreports/1.json
  def show
    @bugreport = Bugreport.find(params[:id])

    respond_to do |format|

  #プルダウンでコード登録したものを日本語化したい
  #    if @bugreport.hakosha = "1"
  #         @hakosha_kana = "営業部"
  #    elsif @bugreport.hakosha = "2"
  #         @hakosha_kana = "情シ部"
  #    elsif @bugreport.hakosha = "3"
  #         @hakosha_kana = "ＣＴＩ"
  #    else
  #         @hakosha_kana = "ＨＴＣ"
  #    end

      format.html # show.html.erb
      format.json { render json: @bugreport }
    end
  end

  # GET /bugreports/new
  # GET /bugreports/new.json
  def new
    @bugreport = Bugreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bugreport }
    end
  end

  # GET /bugreports/1/edit
  def edit
    @bugreport = Bugreport.find(params[:id])
  end

  # POST /bugreports
  # POST /bugreports.json
  def create
    @bugreport = Bugreport.new(params[:bugreport])

    respond_to do |format|
      if @bugreport.save
        format.html { redirect_to @bugreport, notice: 'Bugreport was successfully created.' }
        format.json { render json: @bugreport, status: :created, location: @bugreport }
      else
        format.html { render action: "new" }
        format.json { render json: @bugreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bugreports/1
  # PUT /bugreports/1.json
  def update
    @bugreport = Bugreport.find(params[:id])

    respond_to do |format|
      if @bugreport.update_attributes(params[:bugreport])
        format.html { redirect_to @bugreport, notice: 'Bugreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bugreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugreports/1
  # DELETE /bugreports/1.json
  def destroy
    @bugreport = Bugreport.find(params[:id])
    @bugreport.destroy

    respond_to do |format|
      format.html { redirect_to bugreports_url }
      format.json { head :no_content }
    end
  end
end
