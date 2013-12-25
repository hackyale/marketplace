angular.module('Marketplace')
  .controller('IndexCtrl', ['$scope', '$state', 'InApi', ($scope, $state, InApi) ->
    InApi.isAuthorized().then (res) ->
      $state.go 'welcome' unless res

    $scope.logout = ->
      console.log 'logout'
      InApi.logout()
      $state.go 'welcome'
  ])
