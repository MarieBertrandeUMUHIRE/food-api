(function() {
  "use strict";
  angular.module("app").controller("foodsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v2/foods.json").then(function(response) {
        $scope.foods = response.data;
      });
    }
    $scope.addFood = function(ingredient,spice,measurement){
      var food = {
        ingredient: ingredient,
        spice: spice,
        measurement:measurement
      };
      $http.post("/api/v2/foods.json", food).then(function(response) {
        $scope.foods.push(response.data)
      });
    }


    $scope.deleteFood = function(food, index) {
      $http.delete("/api/v2/foods/" + food.id + ".json").then(function(response){
       $scope.foods.splice(index, 1);
      });
    }

    $scope.updateFood = function(food, ingredient, spice, measurement) {
      var updatedFood = {
        ingredient: ingredient,
        spice: spice,
        measurement:measurement
      };
      $http.patch("/api/v2/foods/" + food.id + ".json", updatedFood).then(function(response){
        food = response.data
      });
    }
     $scope.toggleOrder = function(attribute) {
      $scope.attributes = attribute;
    }

    window.$scope = $scope;

  });

})();