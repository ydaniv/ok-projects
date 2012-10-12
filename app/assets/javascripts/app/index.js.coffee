#= require json2
#= require jquery
#= require spine
#= require spine/manager
#= require spine/ajax
#= require spine/route

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require ./main

class App extends Spine.Controller

  constructor: ->
    super

    @main = new App.Main
    @append(@main)
    @setupAjax()
    Spine.Route.setup(history:true)

  setupAjax: ->
    $(document).ajaxSend (e, xhr, options) ->
      token = $("meta[name='csrf-token']").attr("content")
      xhr.setRequestHeader("X-CSRF-Token", token)

window.App = App