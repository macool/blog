window.Helpers ||= {}

window.Helpers.AlertsHelper = 
  create: (obj, identifier) ->
    # identifier lets you replace other alerts
    # structure of obj:
    # {kind: "error", content: "contenido de la alerta", auto_close: true, hide_close_button: false}
    obj.kind = "" unless obj.kind
    if obj.auto_close is undefined or not typeof(obj.auto_close) is "number"
      obj.auto_close = 10000 # 5 segundos

    $alert = $("<div />", {
      class: "alert alert-#{obj.kind}",
      style: "display: none"
      id: if identifier then "alert_with_identifier_#{identifier.split(" ").join("_")}" else ""
      html: obj.content
    })

    unless obj.hide_close_button
      $alert.append "<a class='close' data-dismiss='alert' href='#'>x</a>"
    
    # remove old alerts:
    if identifier
      $old_alerts = $("div#flashes").find("#alert_with_identifier_#{identifier.split(" ").join("_")}")
      $old_alerts.slideUp "fast", ->
        $old_alerts.remove()
    
    $("div#flashes").prepend($alert)
    $alert.slideDown()

    if obj.auto_close
      setTimeout ->
        $alert.fadeOut ->
          $alert.remove()
      , obj.auto_close
    null
