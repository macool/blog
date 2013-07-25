window.Helpers ||= {}

window.Helpers.ButtonsHelper =
  init: ( $el ) ->
    $el.find(".button_new:not(.looks_like_button)").each ->
      $(this).addClass("looks_like_button btn btn-info btn-mini").html "<i class='icon-plus icon-white'></i> " + $(this).html()

    $(".mostrar_show:not(.looks_like_button)").each ->
      $(this).addClass("looks_like_button btn btn-mini").html "<i class='icon-eye-open'></i> " + $(this).html()

    $el.find(".delete_destroy:not(.looks_like_button)").each ->
      $(this).addClass("looks_like_button btn btn-mini btn-danger").html "<i class='icon-remove icon-white'></i> " + $(this).html()

    $el.find(".editar_edit:not(.looks_like_button)").each ->
      $(this).addClass("looks_like_button btn btn-mini").html "<i class='icon-edit'></i> " + $(this).html()

    $el.find(".atras_back:not(.looks_like_button)").each ->
      $(this).addClass("looks_like_button btn btn-mini btn-inverse").html "<i class='icon-arrow-left icon-white'></i> " + $(this).html()

    $el.find(".cancel_button:not(.looks_like_button)").each ->
      $(this).addClass("looks_like_button btn btn-mini btn-inverse").html "<i class='icon-remove icon-white'></i> " + $(this).html()

    $el.find("input[type=submit]:not(.looks_like_button)").addClass("looks_like_button btn btn-primary")

    # placeholder:
    # $('input[placeholder]').placeholder()
    null
