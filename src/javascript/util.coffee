navHideAnimation = require './navHide'

$ ->
  fixSize()
  navHideAnimation()
  $(window).on 'resize', (->
    fixSize()
    return)

fixSize=(->
  if($('#first-page-banner').length > 0)
    $('#first-page-banner').css(height: window.innerHeight)
    logoTextEl = $('.logo-text', '#first-page-banner')
    $('.rocket-picture').css(height: $('.smoke-picture').offset().top - (logoTextEl.offset().top + logoTextEl.innerHeight()))
  if($('ul.company-list').length > 0)
    companyListSidebar = $('ul.company-list')
    companyListSidebar.css('height', $(window).innerHeight())


  return)




