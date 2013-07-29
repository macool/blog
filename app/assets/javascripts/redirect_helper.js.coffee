window.Helpers ||= {}

class window.Helpers.RedirectHelper
  
  constructor: (options) ->
    @options =
      $node: $("<span />")
      place: "/"
      remainingSeconds: 0
    $.extend @options, options
    @doTimeout()
    
  didTimeout: =>
    if @options.remainingSeconds <= 1
      window.location.href = @options.place
    else
      @options.$node.text @options.remainingSeconds
      @doTimeout()
    null
  
  doTimeout: ->
    @options.remainingSeconds -= 1
    setTimeout @didTimeout, 1000
    null
