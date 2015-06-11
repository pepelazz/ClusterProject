
navHideAnimation =(->
  $element = $('.nav')
  return true  unless $element.length
  elHeight = 0
  elTop = 0
  $document = $(document)
  dHeight = 0
  $window = $(window)
  wHeight = 0
  wScrollCurrent = 0
  wScrollBefore = 0
  wScrollDiff = 0
  $window.on "scroll", ->
    elHeight = $element.outerHeight()
    dHeight = $document.height()
    wHeight = $window.height()
    wScrollCurrent = $window.scrollTop()
    wScrollDiff = wScrollBefore - wScrollCurrent
    elTop = parseInt($element.css("top")) + wScrollDiff
    if wScrollCurrent <= 0 # scrolled to the very top; element sticks to the top
      $element.css "top", 0
    else if wScrollDiff > 0 # scrolled up; element slides in
      $element.css "top", (if elTop > 0 then 0 else elTop)
    else if wScrollDiff < 0 # scrolled down
      if wScrollCurrent + wHeight >= dHeight - elHeight # scrolled to the very bottom; element slides in
        $element.css "top", (if (elTop = wScrollCurrent + wHeight - dHeight) < 0 then elTop else 0)
        # scrolled down; element slides out
      else
        $element.css "top", (if Math.abs(elTop) > elHeight then -elHeight else elTop)
    wScrollBefore = wScrollCurrent
    return

  return
)

module.exports = navHideAnimation
