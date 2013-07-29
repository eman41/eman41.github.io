require_relative 'helper'

POSTS = "_posts/"

task :default => [:test]

desc "Make an empty, published post (layout: post)"
task :post, :title do |t, args|
	new_post args.title, true
end

desc "Make a new draft post  (layout: post)"
task :draft, :title do |t, args|
	new_post args.title
end

def new_post(title, publish = false)
	rh = RakeHelper.new(publish)
	rh.new_post title
end