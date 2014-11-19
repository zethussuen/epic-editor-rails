require 'open-uri'

begin
  require File.expand_path('../config/application', __FILE__)
  EpicEditorRails::Application.load_tasks
rescue LoadError
end

# rake update[param]
# param can be a tag name, a branch name, or a commit hash on https://github.com/OscarGodson/EpicEditor
# It defaults to 'develop' (ie, the develop branch)
task :update, [:arg1] do |t, args|
  version = args[:arg1] || 'develop'
  puts "Updating to EpicEditor #{version}"

  # version can be a commit hash, a branch name, or a tag name - github will handle them all the same.
  base_url = "https://raw.githubusercontent.com/OscarGodson/EpicEditor/#{version}/"

  js_url = "#{base_url}epiceditor/js/epiceditor.js"
  puts "copying #{js_url}"
  js_content = open(js_url).read

  puts 'Replacing base path'
  js_content.gsub!(/basePath: 'epiceditor'/, "basePath: ''")

  # Use asset pipeline version of css files.
  puts 'Substituting asset pipeline paths'
  js_content.gsub!(/'\/themes\/(\w.*)\/(\w.*)\.css'/, "'<%= asset_path(\"\\1/\\2.css\") %>'")

  open('./vendor/assets/javascripts/epiceditor.js.erb', 'wb') { |f| f << js_content }

  remote_css_base = "#{base_url}epiceditor/themes/"
  local_css_base = './vendor/assets/stylesheets/'
  css_files = [
    'base/epiceditor.css',
    'editor/epic-dark.css',
    'editor/epic-light.css',
    'preview/bartik.css',
    'preview/github.css',
    'preview/preview-dark.css',
  ]

  css_files.each do |css_file|
    remote_path = remote_css_base + css_file
    local_path = local_css_base + css_file
    css_content = open(remote_path).read

    puts "copying #{remote_path}"
    open(local_path, 'wb') { |f| f << css_content }
  end
end