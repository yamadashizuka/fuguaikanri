require 'test_helper'

class BugreportsControllerTest < ActionController::TestCase
  setup do
    @bugreport = bugreports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugreports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bugreport" do
    assert_difference('Bugreport.count') do
      post :create, bugreport: { bhyo_no: @bugreport.bhyo_no, biko: @bugreport.biko, fuguaitenpu_kubun: @bugreport.fuguaitenpu_kubun, genin_kubun: @bugreport.genin_kubun, hako_ymd: @bugreport.hako_ymd, hakosha: @bugreport.hakosha, hasseikankyo: @bugreport.hasseikankyo, hasseinaiyo: @bugreport.hasseinaiyo, judaido: @bugreport.judaido, kaisekikekka: @bugreport.kaisekikekka, kaito_ymd: @bugreport.kaito_ymd, kaitosha: @bugreport.kaitosha, kakuninsha: @bugreport.kakuninsha, kanryo_ymd: @bugreport.kanryo_ymd, kenmei: @bugreport.kenmei, kensyutukotei: @bugreport.kensyutukotei, kinomei: @bugreport.kinomei, kotei_kubun: @bugreport.kotei_kubun, saigensei: @bugreport.saigensei, sihen_no: @bugreport.sihen_no, status_kubun: @bugreport.status_kubun, syori_kubun: @bugreport.syori_kubun, systemmei: @bugreport.systemmei, taisyo_kubun: @bugreport.taisyo_kubun, taisyo_ymd: @bugreport.taisyo_ymd, taisyobutumei: @bugreport.taisyobutumei, taisyoirai: @bugreport.taisyoirai, taisyokibo_ymd: @bugreport.taisyokibo_ymd, taisyosha: @bugreport.taisyosha, taisyosyoti: @bugreport.taisyosyoti, taisyotenpu_kubun: @bugreport.taisyotenpu_kubun, taisyoyotei_ymd: @bugreport.taisyoyotei_ymd, tyofuku_kubun: @bugreport.tyofuku_kubun, tyofuku_no: @bugreport.tyofuku_no }
    end

    assert_redirected_to bugreport_path(assigns(:bugreport))
  end

  test "should show bugreport" do
    get :show, id: @bugreport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bugreport
    assert_response :success
  end

  test "should update bugreport" do
    put :update, id: @bugreport, bugreport: { bhyo_no: @bugreport.bhyo_no, biko: @bugreport.biko, fuguaitenpu_kubun: @bugreport.fuguaitenpu_kubun, genin_kubun: @bugreport.genin_kubun, hako_ymd: @bugreport.hako_ymd, hakosha: @bugreport.hakosha, hasseikankyo: @bugreport.hasseikankyo, hasseinaiyo: @bugreport.hasseinaiyo, judaido: @bugreport.judaido, kaisekikekka: @bugreport.kaisekikekka, kaito_ymd: @bugreport.kaito_ymd, kaitosha: @bugreport.kaitosha, kakuninsha: @bugreport.kakuninsha, kanryo_ymd: @bugreport.kanryo_ymd, kenmei: @bugreport.kenmei, kensyutukotei: @bugreport.kensyutukotei, kinomei: @bugreport.kinomei, kotei_kubun: @bugreport.kotei_kubun, saigensei: @bugreport.saigensei, sihen_no: @bugreport.sihen_no, status_kubun: @bugreport.status_kubun, syori_kubun: @bugreport.syori_kubun, systemmei: @bugreport.systemmei, taisyo_kubun: @bugreport.taisyo_kubun, taisyo_ymd: @bugreport.taisyo_ymd, taisyobutumei: @bugreport.taisyobutumei, taisyoirai: @bugreport.taisyoirai, taisyokibo_ymd: @bugreport.taisyokibo_ymd, taisyosha: @bugreport.taisyosha, taisyosyoti: @bugreport.taisyosyoti, taisyotenpu_kubun: @bugreport.taisyotenpu_kubun, taisyoyotei_ymd: @bugreport.taisyoyotei_ymd, tyofuku_kubun: @bugreport.tyofuku_kubun, tyofuku_no: @bugreport.tyofuku_no }
    assert_redirected_to bugreport_path(assigns(:bugreport))
  end

  test "should destroy bugreport" do
    assert_difference('Bugreport.count', -1) do
      delete :destroy, id: @bugreport
    end

    assert_redirected_to bugreports_path
  end
end
