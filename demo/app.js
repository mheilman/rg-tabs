riot.tag('demo-app', '<rg-tabs onopen="{ tabOpened }"> <rg-tab heading="Tab 1"> Tab one </rg-tab> <rg-tab heading="Tab 2" active="true"> Tab two </rg-tab> <rg-tab heading="Tab 3"> Tab three </rg-tab> <rg-tab heading="Tab 4" disabled="true"> Tab four </rg-tab> <rg-tab heading="Tab 5"> Tab five </rg-tab> </rg-tabs>', function (opts) {
	var _this = this;
	_this.tabOpened = function (tab) {
		console.log(tab);
	};
	
});