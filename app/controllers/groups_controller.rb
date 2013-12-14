class GroupsController < ApplicationController
  def show
    @group = current_user.group
  end
end