# frozen_string_literal: true

# Controller for handling dashboard-related actions.
class DashboardController < ApplicationController
  before_action :authenticate_user!

  # GET /dashboard
  def index
    @user = current_user
  end
end
