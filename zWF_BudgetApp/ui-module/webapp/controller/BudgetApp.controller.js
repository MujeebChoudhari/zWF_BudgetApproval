sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("zbudgetapp.uimodule.controller.BudgetApp", {
            onInit: function () {
                this.getView().setModel(new sap.ui.model.json.JSONModel({
                    text: "",
                    result: ""
                }));
            }
        });
    });
