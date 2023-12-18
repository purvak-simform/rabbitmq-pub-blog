class User < ApplicationRecord
  after_create { publish_to_dashboard }


  private
  def publish_to_dashboard
    Publisher.publish('users', attributes)
  end
end
