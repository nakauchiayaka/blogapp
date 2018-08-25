class ClipsController < ApplicationController
  def index
    @user = current_user
    @clips = Clip.where(user_id: @user.id).order('created_at DESC')
  end

  def create


    @user_id = current_user.id
    @blog_id = Blog.find(params[:id]).id
    @clip = Clip.new(blog_id: @blog_id, user_id: @user_id)


      if @clip.save
        redirect_to user_path(current_user)
      end

  end

  def destroy
    @clip = Clip.find(params[:id])
    if @clip.destroy
      redirect_to user_path(current_user)
    end
  end
end
