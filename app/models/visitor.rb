class Visitor
  include ActiveModel::Model
  attr_accessor :email
  validates_presence_of :email
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe
    sg = SendGrid::API.new(api_key: Rails.application.secrets.sendgrid_api_key)
    data = [{email: self.email}]
    response = sg.client.contactdb.recipients.post(request_body: data)

    Rails.logger.info 'Sendgrid Response Status'
    Rails.logger.info response.status_code
    Rails.logger.info response.body
    Rails.logger.info response.headers
    Rails.logger.info("Subscribed #{self.email} to Sendgrid (not really)")
  end

end