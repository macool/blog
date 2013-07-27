window.Helpers ||= {}

formatted_forms = false

add_form_horizontal = ->
  min_width = 510
  document.width > min_width

window.Helpers.FormsHelper = 
  $form: null
  setFieldsWithErrors: ->
    $fields_with_errors = @$form.find(".field_with_errors")
    $fields_with_errors.addClass("control-group error")
    for label in $fields_with_errors.find("label")
      $label = $(label)
      $label.parent().next().prepend($label)
    # $fields_with_errors.parent().find(".help-inline").each ->
    #   $(this).show().parent().find(".field_with_errors").last().append this
    null
  setDivsOnLabels: ->
    @$form.find("label").addClass("control-label")
    null
  setFormClasses: ->
    if add_form_horizontal()
      @$form.addClass("form-horizontal")
    @$form.find(".field").addClass("control-group")
    null
  wrapInputs: ->
    for node in @$form.find("input, textarea, select")
      $this = $(node)
      if not $this.hasClass("no_controls") and not $this.parent().hasClass("controls")
        $this.wrap("<div class='controls' />")
    null
  init: ($el) ->
    for form in $el.find("form:not(.no_horizontal)")
      @initialize(form)
    null
  initialize: ( form ) ->
    @$form = $(form)
    @setDivsOnLabels()
    @setFormClasses()
    @wrapInputs()
    @setFieldsWithErrors()
    null


# $(document).on "nested:fieldAdded", (e) ->
#   # this field was just inserted into your form
#   # var field = event.field
#   # it's a jQuery object already! Now you can find date input
#   # var dateField = field.find('.date');
#   # and activate datepicker on it
#   # dateField.datepicker()
#   window.Helpers.FormsHelper.init()

$(window).on "resize", ->
  if add_form_horizontal()
    $("form:not(.no_horizontal)").addClass "form-horizontal"
  else
    $("form.form-horizontal").removeClass "form-horizontal"
  null
