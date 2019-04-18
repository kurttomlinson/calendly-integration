require "rails_helper"

describe CalendlyController, type: :controller do
  describe "POST /calendly/invitee_created" do
    let!(:params) { load_json_fixture(Rails.root.join("spec", "fixtures", "invitee_created.json")) }

    it "creates a meeting" do
      expect {
        post :invitee_created, params: params
      }.to change{ Meeting.count }.by(1)
    end

    it "creates a meeting with the right values" do
      post :invitee_created, params: params
      created_meeting = Meeting.last
      expect(created_meeting.invitee_name).to eq "test 1"
      expect(created_meeting.event_start_time).to eq DateTime.parse("Thu, 18 Apr 2019 14:30:00 UTC +00:00")
      expect(created_meeting.event_end_time).to eq DateTime.parse("Thu, 18 Apr 2019 14:45:00 UTC +00:00")
      expect(created_meeting.event_type_name).to eq "15 Minute Meeting"
      expect(created_meeting.event_created_at).to eq DateTime.parse("Thu, 18 Apr 2019 00:49:17 UTC +00:00")
    end
  end
end
