angular.module('app.exampleApp').controller("ExampleCtrl", [
  '$scope', function($scope) {
    console.log('ExampleCtrl running');
    return $scope.exampleValue = "Hello angular and rails";
  }
]);
