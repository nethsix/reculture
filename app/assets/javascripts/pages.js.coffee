# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".tags span").click ->
    if $(this).hasClass("marked")
      $(this).removeClass("marked")
    else
      $(this).addClass("marked")

$ ->
  $(".feedback-heading").click ->
    $this = $(this)
    if $this.hasClass("not-selected")
      $previousSelected = $this.parent(".feedback-headings").children(".feedback-heading.selected")
      $previousSelected.addClass("not-selected")
      $previousSelected.removeClass("selected")
      $previousSelected.children(".blip").addClass("hidden")
      
      $this.removeClass("not-selected")
      $this.addClass("selected")
      $this.children('.blip').removeClass("hidden")


    
