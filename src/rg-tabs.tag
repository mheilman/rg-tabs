<rg-tabs>

	<div class="tabs">
		<yield/>
	</div>

	<script>
		var _this = this;

		// If more than one tab set to active honor the first one
		_this.on('mount', function () {
			var activeTab = false;
			_this.tags['rg-tab'].forEach(function (tab) {
				if (activeTab) {
					tab.active = false;
				}
				if (tab.active) {
					activeTab = true;
				}
			});
		});

		// Deactivate all tabs and active selected one
		_this.tags['rg-tab'].forEach(function (tab) {
			tab.on('tab:selected', function () {
				deselectTabs();
				tab.active = true;
				_this.update();
			});
		});

		function deselectTabs() {
			_this.tags['rg-tab'].forEach(function (tab) {
				tab.active = false;
			});
		}
	</script>

</rg-tabs>
