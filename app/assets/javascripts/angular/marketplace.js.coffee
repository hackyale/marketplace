marketplace = angular.module('Marketplace', ['ngResource', 'ui.router'])
  .config(['$stateProvider', '$locationProvider', '$urlRouterProvider',
    ($stateProvider, $locationProvider, $urlRouterProvider) ->
      $stateProvider
        .state('welcome',
          url: '/welcome'
          templateUrl: '/assets/welcome.html'
          controller: 'WelcomeCtrl'
        )
        .state('index',
          url: '/'
          templateUrl: '/assets/index.html'
          controller: 'IndexCtrl'
        )
      $locationProvider.html5Mode(false)
      $urlRouterProvider.otherwise('/')
  ])
  # Configure all AJAX calls to have the right CSRF token for Rails
  .config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = 
      $('meta[name=csrf-token]').attr('content');
  ])
  .run (['$rootScope', ($rootScope) ->

    # window.onInReady = 
    # Load LinkedIn once Angular is ready
    # angular.element("body").append("<script type='in/Login'></script>")
  ])
