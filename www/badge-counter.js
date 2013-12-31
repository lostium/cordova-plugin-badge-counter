//
// badge-counter.js
//
// Created by Lostium Project on 2013-12-31.

var cordova = require('cordova'),
        exec = require('cordova/exec');

var BadgeCounter = function() {    
};

BadgeCounter.prototype.get = function(success, error) { 
    cordova.exec(success, error, "BadgeCounter", "get", []);
};
BadgeCounter.prototype.set = function(value, success, error) {    
    cordova.exec(success, error, "BadgeCounter", "set", [value]);
};
var badgeCounter = new BadgeCounter();
module.exports = badgeCounter;
