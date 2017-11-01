class ResponsesController < ApplicationController
  def new
    @receiver  = group.users.find(params[:receiver_id])
    @response  = Response.new(receiver: @receiver, giver: current_user, group: group)
    @questions = group.project.questions
  end

  def create
    params[:scores].each do |score|
    end
    redirect_to dashboard_path
  end

  private

    def group
      @group ||= current_user.groups.find(params[:group_id])
    end
end
