(function() {
  "use strict";
  angular.module("app").controller("foodsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v2/foods.json").then(function(response) {
        $scope.foods = response.data;
      });
    }
  });

})();