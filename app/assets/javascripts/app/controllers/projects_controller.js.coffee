window.Controllers or= {}
Project = App.Project
class Index extends Spine.Controller

  constructor: ->
    super
    @active ->
      @render()

  render: ->
    @html @view('projects/index')(@)

class Show extends Spine.Controller
  events:
    'click a[data-action=index]': 'index'

  constructor: ->
    super
    @active (params) ->
      #@project = Project.find(params.id)
      @render()

  render: ->
    @html @view('projects/show')(@)

  index: (e) ->
    e.preventDefault()
    @navigate '/projects'

Controllers.Projects = {
  Index: Index
  Show: Show
}