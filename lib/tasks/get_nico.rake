namespace :get_nico do
  desc "niconicoから動画の情報を取得する"
  task nico_search: :environment do |t|
    nico = NicoSearchSnapshot.new('nikoniko')
    results = nico.search(keyword, size: 100)

    results.each do |r|
      Info.create(cmsid: r.cmsid, title: r.title, description: r.description, thumbnail: r.thumbnail_url, view_counter: r.view_counter  )
      # puts r.cmsid # -> "sm12345"
      # puts r.title # -> "動画のタイトル"
      # puts r.description # -> "動画の説明文"
    end
  end
end
