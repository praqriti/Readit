require 'nokogiri'
require 'zlib'
require 'rubygems'

task :parse => :environment do

  Dir.foreach("public/xml/") do |file|

    next if file == '.' or file == '..'

    source = Nokogiri::XML(File.open("public/xml/#{file}"))

    @channel_link = source.css("link").first.text.gsub(/\n/,"")
    @channel_title = source.css("title").first.text.gsub(/\n/,"")
    @channel_desc = source.css("description").first.text
    @channel_image = source.css("url").first.text.gsub(/\n/,"")

    Channel.create(:link => @channel_link, :title => @channel_title,:description => @channel_desc, :image_url => @channel_image )

    source.xpath("//channel/item").each do |content|

     @item_link = content.css("link").text.gsub(/\n/,"")
     @item_title = content.css("title").text.gsub(/\n/,"")
     @item_desc = content.css("description").text

    Item.create(:link => @item_link, :title => @item_title,:description => @item_desc)

    end


  end

end