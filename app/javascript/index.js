window.addEventListener('turbolinks:load', function () {

  const $menu_btn = document.getElementById("menubtn");
  const $menu = document.getElementById("menu");
  console.log($menu_btn)
  $menu_btn.addEventListener('click', function () {
    const $menu_display = window.getComputedStyle($menu, null).getPropertyValue('display');
    if ($menu_display === 'none') {
      console.log("aaa")
      $menu.setAttribute("style", "display:block;")
    }
    else {
      $menu.setAttribute("style", "display:none;")
    }
  })



})