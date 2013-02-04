require 'test_helper'

class FuguaisControllerTest < ActionController::TestCase
  setup do
    @fuguai = fuguais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuguais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuguai" do
    assert_difference('Fuguai.count') do
      post :create, fuguai: { bhyo_no: @fuguai.bhyo_no, biko: @fuguai.biko, fuguai_no: @fuguai.fuguai_no, fuguaitenpu_kubun: @fuguai.fuguaitenpu_kubun, genin_kubun: @fuguai.genin_kubun, hako_ymd: @fuguai.hako_ymd, hakosya: @fuguai.hakosya, hasseikankyo: @fuguai.hasseikankyo, hasseinaiyo: @fuguai.hasseinaiyo, judaido: @fuguai.judaido, kaisekikekka: @fuguai.kaisekikekka, kaito_ymd: @fuguai.kaito_ymd, kaitosya: @fuguai.kaitosya, kakuninsya: @fuguai.kakuninsya, kanryo_ymd: @fuguai.kanryo_ymd, kenmei: @fuguai.kenmei, kensyutukotei: @fuguai.kensyutukotei, kinomei: @fuguai.kinomei, kotei_kubun: @fuguai.kotei_kubun, saigensei: @fuguai.saigensei, sihen_no: @fuguai.sihen_no, status_kubun: @fuguai.status_kubun, syori_kubun: @fuguai.syori_kubun, systemmei: @fuguai.systemmei, taisyo_kubun: @fuguai.taisyo_kubun, taisyo_ymd: @fuguai.taisyo_ymd, taisyobutumei: @fuguai.taisyobutumei, taisyoirai_ymd: @fuguai.taisyoirai_ymd, taisyosya: @fuguai.taisyosya, taisyosyoti: @fuguai.taisyosyoti, taisyotenpu_kubun: @fuguai.taisyotenpu_kubun, taisyoyotei_ymd: @fuguai.taisyoyotei_ymd, tyofuku_kubun: @fuguai.tyofuku_kubun, tyofuku_no: @fuguai.tyofuku_no }
    end

    assert_redirected_to fuguai_path(assigns(:fuguai))
  end

  test "should show fuguai" do
    get :show, id: @fuguai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuguai
    assert_response :success
  end

  test "should update fuguai" do
    put :update, id: @fuguai, fuguai: { bhyo_no: @fuguai.bhyo_no, biko: @fuguai.biko, fuguai_no: @fuguai.fuguai_no, fuguaitenpu_kubun: @fuguai.fuguaitenpu_kubun, genin_kubun: @fuguai.genin_kubun, hako_ymd: @fuguai.hako_ymd, hakosya: @fuguai.hakosya, hasseikankyo: @fuguai.hasseikankyo, hasseinaiyo: @fuguai.hasseinaiyo, judaido: @fuguai.judaido, kaisekikekka: @fuguai.kaisekikekka, kaito_ymd: @fuguai.kaito_ymd, kaitosya: @fuguai.kaitosya, kakuninsya: @fuguai.kakuninsya, kanryo_ymd: @fuguai.kanryo_ymd, kenmei: @fuguai.kenmei, kensyutukotei: @fuguai.kensyutukotei, kinomei: @fuguai.kinomei, kotei_kubun: @fuguai.kotei_kubun, saigensei: @fuguai.saigensei, sihen_no: @fuguai.sihen_no, status_kubun: @fuguai.status_kubun, syori_kubun: @fuguai.syori_kubun, systemmei: @fuguai.systemmei, taisyo_kubun: @fuguai.taisyo_kubun, taisyo_ymd: @fuguai.taisyo_ymd, taisyobutumei: @fuguai.taisyobutumei, taisyoirai_ymd: @fuguai.taisyoirai_ymd, taisyosya: @fuguai.taisyosya, taisyosyoti: @fuguai.taisyosyoti, taisyotenpu_kubun: @fuguai.taisyotenpu_kubun, taisyoyotei_ymd: @fuguai.taisyoyotei_ymd, tyofuku_kubun: @fuguai.tyofuku_kubun, tyofuku_no: @fuguai.tyofuku_no }
    assert_redirected_to fuguai_path(assigns(:fuguai))
  end

  test "should destroy fuguai" do
    assert_difference('Fuguai.count', -1) do
      delete :destroy, id: @fuguai
    end

    assert_redirected_to fuguais_path
  end
end
