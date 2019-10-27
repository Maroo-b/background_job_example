class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(email)
    SendEmailService.call(email)
  end
end
