class StoriesController < ApplicationController

  def index
    @stories = Story.all
    render :index
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.image = "#{rand(1..3)}.jpg"
    if @story.save
      flash[:notice] = "New story created."
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def show
    @story = Story.find(params[:id])
    @sentences = @story.sentences
  end

  def edit
    @story = Story.find(params[:id])
    @sentences = @story.sentences
  end

  def update
    @story = Story.find(params[:id])
    @sentences = @story.sentences
    if @story.update(story_params)
      redirect_to story_path(@story)
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

private
  def story_params
    params.require(:story).permit(:name)
  end

end
