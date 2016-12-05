/**************************************************************************
   * Set environment values
 *************************************************************************/

var env = {};

// Import variables if present (from env.js)
if (window) {
    Object.assign(env, window.__env);
}

/**************************************************************************
  * Define Angular application
 *************************************************************************/
var app = angular.module('App', ['ngRoute', 'angularUtils.directives.dirPagination', 'ngAnimate']);


/**************************************************************************
 * Configure logging
 *************************************************************************/

function disableLogging($logProvider) {
    $logProvider.debugEnabled(__env.enableDebug);
}

disableLogging.$inject = ['$logProvider'];

app.config(disableLogging);

/**************************************************************************
 * Log bootstrap message
 *************************************************************************/

function confirmBootstrap($log) {
    $log.debug('Angular bootstrapped!');
}

confirmBootstrap.$inject = ['$log'];

app.run(confirmBootstrap);


/**************************************************************************
 * Make environment available in Angular
 *************************************************************************/

app.constant('__env', __env);

function logEnvironment($log, __env) {
    $log.debug('Environment variables:');
    $log.debug(__env)
}

logEnvironment.$inject = ['$log', '__env'];

app.run(logEnvironment);

app.config(function ($routeProvider) {
    $routeProvider.when('/Location', {
        templateUrl: 'Templates/Location/Location.html',
        controller: 'LocationsCtrl'
    });
    $routeProvider.when('/Device', {
        templateUrl: 'Templates/Device/Device.html',
        controller: 'DevicesCtrl'
    });
    $routeProvider.when('/Interface', {
        templateUrl: 'Templates/Interface/Interface.html',
        controller: 'InterfacesCtrl'
    });
    $routeProvider.when('/IPAddress', {
        templateUrl: 'Templates/IPAddress/IPAddress.html',
        controller: 'IPAddressesCtrl'
    });
    $routeProvider.otherwise({
        redirectTo: '/Location'
    });

});