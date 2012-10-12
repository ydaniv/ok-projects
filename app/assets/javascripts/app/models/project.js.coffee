class App.Project extends Spine.Model
  @configure 'Project', 'name', 'url', 'clone_url', 'description'

  @extend Spine.Model.Ajax
