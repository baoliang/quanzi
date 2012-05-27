# coding: UTF-8
class FeedsController < ApplicationController

  def index
    @feeds = Feed.desc('_id').paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json
    end
  end

  def show
    @feed = Feed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json
    end
  end

  def new
    @feed = Feed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json
    end
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def create
    @feed = Feed.new(params[:feed])

    respond_to do |format|
      if @feed.save
        format.html { redirect_to(feeds_path, :notice => 'Feed 创建成功。') }
        format.json
      else
        format.html { render :action => "new" }
        format.json
      end
    end
  end

  def update
    @feed = Feed.find(params[:id])

    respond_to do |format|
      if @feed.update_attributes(params[:feed])
        format.html { redirect_to(feeds_path, :notice => 'Feed 更新成功。') }
        format.json
      else
        format.html { render :action => "edit" }
        format.json
      end
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy

    respond_to do |format|
      format.html { redirect_to(feeds_path,:notice => "删除成功。") }
      format.json
    end
  end
end
