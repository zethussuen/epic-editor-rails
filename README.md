epic-editor-rails v0.2.4
=================
Gemfile: ```gem 'epic-editor-rails'```  
Install: ```$ bundle install  ```

application.js:  
```
//= require 'epiceditor'  
```

specifying themes (eg, in a `.js.erb` file, or in a `<script>` tag):
```erb
new EpicEditor({
  theme: {
    editor: '<%= asset_path 'editor/epic-light.css' %>',
    preview: '<%= asset_path 'preview/preview-dark.css' %>'
  }
}).load();
```

otherwise, follow all instructions and patterns from the upstream [EpicEditor](https://github.com/OscarGodson/EpicEditor) README

EpicEditor v0.2.3  
http://epiceditor.com/  


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/zethussuen/epic-editor-rails/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

