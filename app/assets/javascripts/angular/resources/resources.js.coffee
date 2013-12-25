angular.module('Marketplace')
  .factory('User', ['$resource', ($resource) ->
    User = $resource('/users/:id', {id: '@id'}, {update: {method: 'PUT'}})

    return User
  ])
  .factory('Project', ['$resource', ($resource) ->
    Project = $resource('/users/:id', {id: '@id'}, {update: {method: 'PUT'}})

    return Project
  ])
