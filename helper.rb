class RakeHelper
	attr_accessor :published
	
	def initialize(publish = false)
		@published = publish ? '---' : "published: false\n---"
	end

	def new_post(title)
		f = File.new(filename(title), "w+")
		add_header(f, title)
	end

	def filename(title)
		file = "#{timestamp}-#{postify title}.markdown"
		POSTS + file
	end

	def timestamp(t = Time.now)
		t.strftime("%F")
	end

	def postify(title)
		title.gsub(/\s+/, '-').downcase
	end

	def add_header(file, title)
		File.open(file, "w+") do |f|
			f.puts %Q{---
layout: post
title: \"#{title}\"
date: #{Time.now.strftime("%F %T")}
tags: post
#{@published}}
		end
	end
end
