require 'rails_helper'

RSpec.describe Event do
  context "ending in the year 2042" do
    let(:event) do
      build :event,
             ends_at: Time.zone.local(2042, 1, 1, 15, 45)
    end

    it "works" do
      p event.ends_at # Wed, 01 Jan 2042 15:45:00 UTC +00:00
      event.save!
      p event.ends_at # Thu, 07 Feb 2019 15:45:00 UTC +00:00
    end
  end
end