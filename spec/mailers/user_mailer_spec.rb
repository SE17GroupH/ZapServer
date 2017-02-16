require "rails_helper"

RSpec.describe UserMailerMailer, type: :mailer do
  describe "new_session" do
    let(:mail) { UserMailerMailer.new_session }

    it "renders the headers" do
      expect(mail.subject).to eq("New session")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
