xml.instruct! :xml, version: '1.0'
xml.rss version: '2.0' do
  xml.channel do
    xml.title "Podcast sample"
    xml.description "Podcast sample on Ruby on Rails"
    xml.link posts_url

    @posts.each do |post|
      xml.item do
        xml.title post.title
        xml.description post.description
        xml.pubDate l(post.created_at)
        xml.link post_url(post)
        xml.guid post_url(post)
        xml.enclosure(url: post.medialink, type: 'audio/aac')
      end
    end
  end
end
