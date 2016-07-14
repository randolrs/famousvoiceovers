# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	$(document).ready ->
		
		jQuery ->

			$("a.dismiss-cover-page").click (event), ->
				coverPage = $(@).parent().parent()
				coverPage.hide()

			$("a#next-to-audition-option").click (event), ->
				thisPanel = $(@).parent()
				auditionOptionPanel = $('body').find('div#audition-option')
				thisPanel.slideUp()
				auditionOptionPanel.slideDown()

			$("a.select-option").click (event), ->
				thisPanel = $(@).parent()
				scriptInputPanel = $('body').find('div#script-input')
				thisPanel.slideUp()
				scriptInputPanel.slideDown()

			$("a#next-to-payment").click (event), ->
				thisPanel = $(@).parent()
				alert("profits")
				auditionOptionPanel = $('body').find('div#audition-option')
				thisPanel.slideUp()
				auditionOptionPanel.slideDown()

$(document).ready(ready)
$(document).on('page:load', ready)