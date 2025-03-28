# app/controllers/events_controller.rb
class EventsController < ApplicationController
  before_action :authorize_event, only: %i(create update destroy)
  before_action :set_event, only: %i(show update destroy)

  def index
    events = Event.all
    render json: events
  end

  def show
    render json: @event
  end

  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    render json: { message: 'Event deleted successfully' }, status: :ok
  end

  def create
    event = @current_user.events.build(event_params)
    if event.save
      render json: event, status: :created
    else
      render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.permit(:name, :date, :venue)
  end

  def authorize_event
    authorize Event
  end
end
