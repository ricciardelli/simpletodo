# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('input[type=checkbox]').change ->
    $.ajax '/tasks/' + $(this).data().id + '/toggle',
        type: 'PATCH'
        error: (jqXHR, textStatus, errorThrown) ->
            console.log "AJAX Error: #{errorThrown}"
        success: (data, textStatus, jqXHR) ->
            console.log "Successful AJAX call: #{data}"
