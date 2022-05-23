class VideosController < ApplicationController
    before_action :set_video, only: [:show, :edit, :update, :destroy]
        # after_action :
        def index
          @videos = Video.all
        end
      
        def new
          @video = Video.new
        end
      
        def create
          @video = Video.create video_params
          redirect_to videos_path
        end
      
        def show
          #@video = Video.find params[:id]
        end
        
        def edit
          #@video = Video.find params[:id]
        end
      
        def update
          @video.update video_params
          redirect_to videos_path
        end
      
        def destroy
          @video.delete
          redirect_to videos_path
        end
      
        private
      
        def set_video
          @video = Video.find params[:id]
        end
      
        def video_params
          params.required(:video).permit(:title, :description, :duration, :visible)
        end
end
