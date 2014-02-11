class ReservationsController < ApplicationController

  before_filter :load_restaurant

  def show
    @reservation = Reservation.find(params[:id])
    if current_user
      @reservation = @restaurant.reservations.build
  	end
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user_id = current_user.id
    @reservations = Reservation.all
    seats_total = @reservation.party_size



    @reservations.each do |r|
      if r.date == @reservation.date && r.restaurant_id == @reservation.restaurant_id && r.time.strftime("%H:%M") == @reservation.time.strftime("%H:%M")
        seats_total += r.party_size
      end
    end

    if @reservation.time.hour < 11 || @reservation.time.hour > 20
      redirect_to users_path, :notice => 'Sorry: the reservation must be booked between 11:00am and 8:00pm.'
    else
      if seats_total < 100
        @reservation.save
        redirect_to users_path, :notice => 'Reservation created successfully'
      else
        redirect_to restaurants_path, :notice => "The size of your party is greater than the current capacity of the restaurant."
      end
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to users_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :party_size, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id]) if params[:restaurant_id] != nil
  end
end
