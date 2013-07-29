require_relative 'helper'

POSTS = "_posts/"

task :default => [:test]

desc "Make a new draft post with the post layout"
task :post, :title do |t, args|
	new_post args.title, true
end

desc desc "Make a new draft post with the post layout"
task :draft, :title do |t, args|
	new_post args.title
end

def new_post(title, publish = false)
	rh = RakeHelper.new(publish)
	rh.new_post title
end