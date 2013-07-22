window.Helpers ||= {}

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
    @$form.addClass("form-horizontal")
      .find(".field").addClass("control-group")
    null
  wrapInputs: ->
    for node in @$form.find("input, textarea, select")
      $this = $(node)
      if not $this.hasClass("no_controls") and not $this.parent().hasClass("controls")
        $this.wrap("<div class='controls' />")
    null
  # setClickOnLabelListener: ->
  #   # enables click on label
  #   $(document).on "click", "label", ->
  #     attr = this.getAttribute("for")
  #     $input = $("input[name='#{attr}'], textarea[name='#{attr}'], select[name='#{attr}']").first()
  #     if $input.attr("type") is "checkbox"
  #       if $input.is(":checked")
  #         $input[0].checked = false
  #       else
  #         $input[0].checked = true
  #     else if $input.length > 0
  #       $input.focus()
  #     null
  #   null
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

