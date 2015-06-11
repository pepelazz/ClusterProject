
$ ->
  $menu = $('.article-menu')
  if($menu.length == 0)
    return
  headerHeight = $('.article-header-bg').offset().top + $('.article-header-bg').innerHeight()
  $(window).on "scroll", ->
    if($(window).scrollTop() > headerHeight)
      $menu.addClass('fixed')
    else
      $menu.removeClass('fixed')

