window.Helpers ||= {}

class window.Helpers.PostsEpicEditor

  constructor: (@selector, @textarea) ->
    @editor = new EpicEditor
      container: @selector
      textarea: @textarea
      basePath: "/epiceditor"
      theme:
        base: '/themes/base/epiceditor.css',
        preview: '/themes/preview/bartik.css',
        editor: '/themes/editor/epic-light.css'
    @editor.load()

