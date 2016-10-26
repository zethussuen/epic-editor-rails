### Note: This gem is currently un-maintained. If you would like to help keep it current or take ownership, please contact me @zethussuen

epic-editor-rails v0.2.4
=================
Gemfile: ```gem 'epic-editor-rails'```  
Install: ```$ bundle install  ```

application.js:  
```
//= require 'epiceditor'  
```

All instructions and patterns from the upstream's README ([EpicEditor](https://github.com/OscarGodson/EpicEditor)) can be applied directly.

With the exception of specifying themes, which can be accomplished along the lines of:
```erb
new EpicEditor({
  theme: {
    editor: '<%= asset_path 'editor/epic-light.css' %>',
    preview: '<%= asset_path 'preview/preview-dark.css' %>'
  }
}).load();
```

EpicEditor v0.2.3  
http://epiceditor.com/  


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/zethussuen/epic-editor-rails/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

