angular.module('Marketplace')
  .controller('WelcomeCtrl', ['$scope', '$state', 'InApi', ($scope, $state, InApi) ->
    $scope.signIn = ->
      InApi.signIn ->
        $state.go 'index'
  ])
