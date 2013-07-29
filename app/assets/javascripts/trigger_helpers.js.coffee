window.Helpers ||= {}

window.Helpers.TriggerHelpers =

  trigger: ($el) ->
    Helpers.ButtonsHelper.init $el
    Helpers.LinkifyHelper.init $el
    Helpers.FormsHelper.init $el
    

$(document).on "page:load ready", ->
  window.scrollTo 0, 1
  Helpers.TriggerHelpers.trigger $ "body"
  null
