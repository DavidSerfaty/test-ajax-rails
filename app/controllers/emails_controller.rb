class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :destroy]


  def index
    @emails = Email.all
    @email = Email.new
  end

  def create
    @email = Email.create(objet: Faker::Book.title, body: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false))
    respond_to do |format|
      format.html { redirect_to books_path, notice: 'Email was successfully created.' }
      format.js { }
    end
  end

  def show
    respond_to do |format|
      # format.html { redirect_to email_path(@email.id) }
      format.js { }
    end
  end

  def destroy
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Task was successfully destroyed.' }
      format.js { }
    end
  end

  private

  def set_email
    @email = Email.find(params[:id])
  end
end
