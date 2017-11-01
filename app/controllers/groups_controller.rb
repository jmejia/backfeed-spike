class GroupsController < ApplicationController
  def show
    @users = current_user.team_members(params[:id])
  end
end
