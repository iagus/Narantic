class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    # obtiene las reservas existentes de ese recurso
    @bookings = Booking.where(resource_id: @booking.resource_id)

    # obtiene la fecha de inicio y la fecha final de la reserva
    # que se intenta efectuar
    @start_time = @booking.start
    @end_time = @booking.end

    # crea un rango de fechas para comparar
    @range = @start_time..@end_time

    # comprueba que la tabla no este vacia
    if @bookings.present?
      # comprueba que no existan ya reservas en ese rango tiempo
      @bookings.each do |booking|

        # existe reserva en ese rango, redirige de nuevo al index y termina el metodo
        if @range === booking.start || @range === booking.end
          redirect_to bookings_path, notice: 'Ya existe una reserva para esos dias'
          return
        end
      end
    end

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Reserva creada satisfactoriamente' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Reserva actualizada satisfactoriamente' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Reserva eliminada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:resource_id, :user_id, :start, :end)
    end
end
