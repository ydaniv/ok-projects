class App.Main extends Spine.Stack
  controllers:
    projectsIndex: Controllers.Projects.Index
    projectsShow: Controllers.Projects.Show

  routes:
    '/projects': 'projectsIndex'
    '/projects/:id': 'projectsShow'