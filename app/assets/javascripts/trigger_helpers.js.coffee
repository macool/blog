window.Helpers ||= {}

window.Helpers.TriggerHelpers =

  trigger: ($el) ->
    Helpers.FormsHelper.init $el
    Helpers.ButtonsHelper.init $el


$(document).on "page:load ready", ->
  Helpers.TriggerHelpers.trigger $ "body"
  null
