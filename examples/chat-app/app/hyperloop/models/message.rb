require 'models/application_record'
class Message < ApplicationRecord
  def time
    created_at
  end
end
