$ ->
  $("input,select,textarea").not("[type=submit]").jqBootstrapValidation()

  $("#form-contact").submit (e) ->
    form = $(this)
    e.preventDefault()
    if !form.jqBootstrapValidation("hasErrors")
      $.ajax
        url: '/'
        data:
          feedback:
            name:    form.find("#inputName").val()
            email:   form.find("#inputEmail").val()
            message: form.find("#inputContact").val()
        dataType: "JSON"
      alert "Thank you for contacting us!"
      form[0].reset()

  $(window).scroll ->

    # global scroll to top button
    if $(this).scrollTop() > 300
      $(".scrolltop").fadeIn()
    else
      $(".scrolltop").fadeOut()


  # scroll nav
  $(".scroller").click ->
    section = $($(this).data("section"))
    top = section.offset().top - 82
    $("html, body").animate
      scrollTop: top
    , 700
    false