/*global QUnit*/

sap.ui.define([
	"zbudgetapp/ui-module/controller/BudgetApp.controller"
], function (Controller) {
	"use strict";

	QUnit.module("BudgetApp Controller");

	QUnit.test("I should test the BudgetApp controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
