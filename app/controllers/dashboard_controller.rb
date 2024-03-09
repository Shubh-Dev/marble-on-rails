# frozen_string_literal: true

# Controller for handling dashboard-related actions.
class DashboardController < ApplicationController
  def index
    @user = current_user
  end
end
