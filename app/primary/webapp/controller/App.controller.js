sap.ui.define([
  "sap/ui/core/mvc/Controller"
],
function(BaseController) {
    "use strict";

	return BaseController.extend("com.bezolli.primary.controller.App", {
		onInit: function() {
			this.getOwnerComponent().getModel().bindList("/Books").requestContexts().then(function(aContexts) {
				const aBookData = aContexts.map(oContext => oContext.getObject());
				console.log(aBookData);
			});
		}
    });
  }
);
  