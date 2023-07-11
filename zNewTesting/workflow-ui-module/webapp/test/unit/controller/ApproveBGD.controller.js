/*global QUnit*/

sap.ui.define([
	"testing/workflow-ui-module/controller/ApproveBGD.controller"
], function (Controller) {
	"use strict";

	QUnit.module("ApproveBGD Controller");

	QUnit.test("I should test the ApproveBGD controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
