class CalendlyController < ApplicationController
  skip_before_action :verify_authenticity_token
  def invitee_created
    # TODO: Move this meeting creation logic into its own class.
    invitee_name = request.params.dig("payload", "invitee", "name")
    event_start_time = request.params.dig("payload", "event", "start_time")
    event_end_time = request.params.dig("payload", "event", "end_time")
    event_type_name = request.params.dig("payload", "event_type", "name")
    event_created_at = request.params.dig("payload", "event", "created_at")

    Meeting.create(
      invitee_name: invitee_name,
      event_start_time: event_start_time,
      event_end_time: event_end_time,
      event_type_name: event_type_name,
      event_created_at: event_created_at,
    )

    head 200
  end
end
