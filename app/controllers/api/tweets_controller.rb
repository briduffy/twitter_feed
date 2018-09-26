class Api::TweetsController < ApplicationController
  def index
    render json: TwitterClient.timeline
  end

  def create
    TwitterClient.tweet(params[:tweet])
  end

  def search
    render json: TwitterClient.by_user(params[:term])
  end
end
