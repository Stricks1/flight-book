class PlaneBooksController < ApplicationController
  before_action :set_plane_book, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /plane_books
  # GET /plane_books.json
  def index
    @plane_books = current_user.plane_books.order(:flight_id)
  end

  # GET /plane_books/1
  # GET /plane_books/1.json
  def show
  end

  # GET /plane_books/new
  def new
    if flash[:f_id]
      @flight = Flight.find(flash[:f_id])
      @plb = PlaneBook.new
      @bookings = @plb.pass_user_flight(current_user,flash[:f_id])
      @plane_book = @flight.plane_books.build
      @plane_book.user = current_user
      flash[:f_id] = flash[:f_id]
    else
      flash[:alert] = 'Choose a flight to book'
      redirect_to root_path
    end
  end

  # GET /plane_books/1/edit
  def edit
  end

  # POST /plane_books
  # POST /plane_books.json
  def create
    @flight = Flight.find(flash[:f_id])
    @plane_book = @flight.plane_books.build(plane_book_params)
    @plane_book.user = current_user

    respond_to do |format|
      if @plane_book.save
        flash[:f_id] = flash[:f_id]
        format.html { redirect_to new_plane_book_url, notice: 'Plane book was successfully created.' }
        format.json { render :show, status: :created, location: @plane_book }
      else
        @plb = PlaneBook.new
        @bookings = @plb.pass_user_flight(current_user,flash[:f_id])
        flash[:f_id] = flash[:f_id]
        format.html { render :new }
        format.json { render json: @plane_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plane_books/1
  # PATCH/PUT /plane_books/1.json
  def update
    respond_to do |format|
      if @plane_book.update(plane_book_params)
        format.html { redirect_to plane_books_url, notice: 'Plane book was successfully updated.' }
        format.json { render :show, status: :ok, location: @plane_book }
      else
        format.html { render :edit }
        format.json { render json: @plane_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plane_books/1
  # DELETE /plane_books/1.json
  def destroy
    @plane_book.destroy
    respond_to do |format|
      format.html { redirect_to plane_books_url, notice: 'Plane book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plane_book
      @plane_book = PlaneBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plane_book_params
      params.require(:plane_book).permit(:pass_name, :pass_email)
    end
end
