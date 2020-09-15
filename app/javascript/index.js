window.addEventListener('load', function () {

  const $menu = document.querySelectorAll(".menu");
  $menu.forEach(function (menu) {
    menu.addEventListener('mouseover', function () {
      menu.setAttribute("style", "color:#ffbf00;")
    })
    menu.addEventListener('mouseout', function () {
      menu.removeAttribute("style", "color:#ffbf00;")
    })
  })

  const $content = document.querySelectorAll(".content-detail");
  console.log($content)
  $content.forEach(function (content) {
    content.addEventListener('mouseover', function () {
      content.setAttribute("style", "color:#ff0040;")
    })
    content.addEventListener('mouseout', function () {
      content.removeAttribute("style", "color:#ff0040;")
    })
  })
})