window.Helpers ||= {}

class window.Helpers.PostsAceEditorHelper
  
  constructor: ->
    @initializeContents()
    @initializeDomEvents()
    @initializeEditor()
  
  initializeContents: ->
    @$form = $("form")
    @editor = ace.edit("editor")
    @$post_content = @$form.find("#post_content")
    @$syntax_selector = @$form.find("#post_content_type")
    
  initializeDomEvents: ->
    @$form.on "submit", =>
      @$post_content.val @editor.getValue()
      true
    @$syntax_selector.on "change", (e) =>
      @editor.getSession().setMode "ace/mode/#{e.target.value}"
  
  initializeEditor: ->
    @editor.setTheme "ace/theme/github"
    @editor.setValue @$post_content.val()
    @editor.getSession().setTabSize 2
    @$syntax_selector.trigger "change"
