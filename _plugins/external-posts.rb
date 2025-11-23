require 'feedjira'
require 'httparty'
require 'jekyll'

module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      if site.config['external_sources'] != nil
        site.config['external_sources'].each do |src|
          p "Fetching external posts from #{src['name']}:"
          
          begin
            # 1. We add a User-Agent header so Medium thinks we are a Chrome browser
            response = HTTParty.get(src['rss_url'], headers: {
              'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36'
            })

            if response.code == 200
              xml = response.body
              feed = Feedjira.parse(xml)
              
              feed.entries.each do |e|
                p "...fetching #{e.url}"
                slug = e.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
                path = site.in_source_dir("_posts/#{slug}.md")
                doc = Jekyll::Document.new(
                  path, { :site => site, :collection => site.collections['posts'] }
                )
                doc.data['external_source'] = src['name'];
                doc.data['feed_content'] = e.content;
                doc.data['title'] = "#{e.title}";
                doc.data['description'] = e.summary;
                doc.data['date'] = e.published;
                doc.data['redirect'] = e.url;
                site.collections['posts'].docs << doc
              end
            else
              # 2. Handle non-200 responses (like 403 Forbidden) gracefully
              p "!! Error fetching feed. Status code: #{response.code}"
            end

          rescue StandardError => error
            # 3. Catch crashes so the build finishes even if the feed is broken
            p "!! Exception raised while fetching external posts: #{error.message}"
          end
          
        end
      end
    end
  end
end