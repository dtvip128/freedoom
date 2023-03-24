# frozen_string_literal: true

module RequestHelpers
  def create_basic_data
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean

    @user = create :user
  end
end
