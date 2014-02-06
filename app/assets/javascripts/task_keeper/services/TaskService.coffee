angular.module('TaskKeeper').factory 'Task', ['railsResourceFactory','$http','$route', (railsResourceFactory,$http) ->
  resource = railsResourceFactory(
    url:'/api/tasks',
    name:'task'
  )

  resource.edit = (context)->
    self= this
    resource.$get(self.$url(context,'edit'))

  resource
]