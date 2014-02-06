angular.module('TaskKeeper').controller "TasksController", ($scope, $route, $routeParams, $location, $http, $q,Task) ->
  $scope.init = ->
    current_action = $route.current.action
    switch current_action
      when 'index'
        @index()
      when 'edit'
        @edit()

  #Action Methods
  $scope.index = ->
    Task.query().then((tasks)->
      $scope.tasks = tasks
    )

  $scope.edit = ->
    Task.edit($routeParams.task_id).then((task)->
      console.info(task)
      $scope.task = task
    )

  #Helpers Methods
  $scope.createTask = (task)->
    new Task(task).create().then((r_task)->
      $scope.tasks.unshift(r_task)
    )

  $scope.updateTask = ()->
    $scope.task.update()

  $scope.deleteTask = (task)->
    task.delete().then(()->
      $scope.tasks.splice($scope.tasks.indexOf(task), 1)
    )

  $scope.toggleTask = (task) ->
    task.update()

