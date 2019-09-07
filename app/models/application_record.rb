class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def erro_message
    return if errors.blank?

    errors.full_messages.join($RS)
  end
end
