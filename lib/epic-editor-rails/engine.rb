module Epic
  module Editor
    module Rails
      class Engine < ::Rails::Engine
        if ::Rails.version >= "3.1"
          initializer "Precompile EpicEditor assets" do |app|
            app.config.assets.precompile += [
              "epiceditor.js", "base/epiceditor.css",
              "editor/epic-dark.css", "editor/epic-light.css",
              "preview/bartik.css", "preview/github.css", "preview-dark.css"
            ]
          end
        end
      end
    end
  end
end
