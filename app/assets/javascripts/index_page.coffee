class ShondaIpsum.IndexPage
  constructor: ->
    $(document).ready @initListeners

  initListeners: =>
    $(".paragraph-link").on "click", @getText

  getText: (ev) =>
    paragraphNumber = $(ev.target).data("number")
    $.ajax
      url: "/text"
      data:
        paragraph_number: paragraphNumber
      method: "POST"
      success: (result) =>
        $(".text-container").html(result)
