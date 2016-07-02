class InfosController < ApplicationController
  require 'rake'
  def index
    @info = Info.new

    @infos = Info.all.order("created_at desc").page(params[:page]).per(10)
  end

  def show
    #code
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)
    if @info.save
      nico = NicoSearchSnapshot.new('nikoniko')
      results = nico.search(@info.keyword, size: 100)

      results.each do |r|
        Info.create(cmsid: r.cmsid, title: r.title, description: r.description, thumbnail: r.thumbnail_url, view_counter: r.view_counter  )
        # puts r.cmsid # -> "sm12345"
        # puts r.title # -> "動画のタイトル"
        # puts r.description # -> "動画の説明文"
      end
        redirect_to root_url
    end
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private
    def info_params
      params.require(:info).permit(:cmsid, :description, :keyword, :thumbnail, :title, :view_counter)
    end
end
