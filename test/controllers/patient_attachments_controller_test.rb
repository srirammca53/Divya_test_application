require 'test_helper'

class PatientAttachmentsControllerTest < ActionController::TestCase
  setup do
    @patient_attachment = patient_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_attachment" do
    assert_difference('PatientAttachment.count') do
      post :create, patient_attachment: { avatar: @patient_attachment.avatar, patient_id: @patient_attachment.patient_id }
    end

    assert_redirected_to patient_attachment_path(assigns(:patient_attachment))
  end

  test "should show patient_attachment" do
    get :show, id: @patient_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_attachment
    assert_response :success
  end

  test "should update patient_attachment" do
    patch :update, id: @patient_attachment, patient_attachment: { avatar: @patient_attachment.avatar, patient_id: @patient_attachment.patient_id }
    assert_redirected_to patient_attachment_path(assigns(:patient_attachment))
  end

  test "should destroy patient_attachment" do
    assert_difference('PatientAttachment.count', -1) do
      delete :destroy, id: @patient_attachment
    end

    assert_redirected_to patient_attachments_path
  end
end
