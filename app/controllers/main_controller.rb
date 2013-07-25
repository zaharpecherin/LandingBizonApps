class MainController < ApplicationController
  def index
    UserMailer.feedback_email(params[:feedback]).deliver if request.xhr?
    respond_to do |format|
      format.html
      format.json { render json: true }
    end
  end
end
