class HomeController < ApplicationController
  def main
  end
  
  def teaminfo
    @doolgi = Team.all
  end
  
  def teamprogress
  end
  
  def qna
  end
  
  def schedule
  end
  
  def vod
  end
  
  def change
    @changed_team = Team.find(params[:num])
    @changed_team.name = params[:a]
    @changed_team.site = params[:b]
    @changed_team.team_key = params[:c]
    @changed_team.info = params[:d]
    @changed_team.item = params[:e]
    @changed_team.process = params[:f]
    
    redirect_to "/teaminfo"
  end
  
  def create
    @bidoolgi = Team.new(name: params[:a], site: params[:b], info: params[:c], item: params[:d], process: params[:e])
    @bidoolgi.save
    
    redirect_to "/teaminfo"
  end
  
  def teamscreen
    @select_team = Team.find(params[:num])
  end
  
  def change_teaminfo
    @change_team = Team.find(params[:num])
  end
  
  def create_teaminfo
  end
end
