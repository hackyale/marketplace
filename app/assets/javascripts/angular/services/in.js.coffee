angular.module('Marketplace')
  .factory('InApi', ['$rootScope', '$q', 
    ($rootScope, $q) ->

      # Signs user in
      signIn = (callback) ->
        return IN.User.authorize(callback)

      # Checks LinkedIn authorization
      # @return{Promise} A promise of resolution, once the stupid
      #   LinkedIn API is done loading. 
      isAuthorized = ->
        deferred = $q.defer()
        if IN.User
          deferred.resolve IN.User.isAuthorized()
        else 
          IN.Event.onOnce IN, 'systemReady', ->
            $rootScope.$apply ->
              deferred.resolve IN.User.isAuthorized()
        return deferred.promise

      # Logout
      logout = (callback) ->
        return IN.User.logout(callback)

      refreshSession = ->
        return IN.User.refresh()

      userInfo = (callback) ->
        return IN.API.Profile("me").result(callback)

      return {
        signIn: signIn
        isAuthorized: isAuthorized
        refreshSession: refreshSession
        userInfo: userInfo
        logout: logout
      }
])
