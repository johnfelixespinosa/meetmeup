class Api::v1::MeetupsController < ApplicationController
  before_action :find_meetup, only: [:show, :update, :destroy]
  
  def index
    @meetups = Meetup.all
    render json: @meetups, status: 200
  end

  def show
    render json: @meetup, status: 200
  end

  def create
    @meetup = Meetup.create(meetup_params)
    render json: @meetup, status: 200
  end

  def update
    @meetup.update(meetup_params)
    render json: @meetup, status: 200
  end

  def destroy
    @meetup.delete
    render json: { meetupId: @meetup.id }
  end

  private

    def meetup_params
      params.require(:meetup).permit(
        :group_name,
        :event_id,
        :date,
        :venue_name,
        :venue_address,
        :venue_city
        )
    end

    def find_meetup
      @meetup = meetup.find(params[:id])
    end

end