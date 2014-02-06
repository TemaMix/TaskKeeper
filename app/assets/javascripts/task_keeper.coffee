app = angular.module('TaskKeeper', ['rails','ngRoute','idialog'])

app.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

app.config(['$routeProvider','$locationProvider',($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when '/', name:'profile', templateUrl: '/templates/index.html', action:'index', controller: 'TasksController'
  $routeProvider.when '/tasks/:task_id', name:'profile', templateUrl: '/templates/edit.html', action:'edit', controller: 'TasksController'
])

$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])