<rg-tabs>

	<div class="tabs">
		<div class="headers">
			<div each="{ tabs }" class="header { active: active, disabled: disabled }" onclick="{ parent.activate }">
				<h4>{ opts.heading }</h4>
			</div>
		</div>

		<yield/>

	</div>

	<script>
		var _this = this;
		_this.tabs = _this.tags['rg-tab'];

		// Give each tab an index
		_this.tabs.forEach(function (tab, i) {
			tab.index = i;
		});

		// If more than one tab set to active honor the first one
		_this.on('mount', function () {
			var activeTab = false;
			_this.tabs.forEach(function (tab) {
				if (activeTab) {
					tab.active = false;
				}
				if (tab.active) {
					activeTab = true;
				}
			});
		});

		// Deactivate all tabs and active selected one
		_this.activate = function (tab) {
			tab = tab.item;
			if (!tab.disabled) {
				deselectTabs();
				opts.onopen(tab);
				tab.active = true;
				_this.update();
			}
		};

		function deselectTabs() {
			_this.tabs.forEach(function (tab) {
				tab.active = false;
			});
		}
	</script>

	<style scoped>

		.tabs {
			background-color: white;
		}

		.headers {
			display: -webkit-flex;
			display: -ms-flexbox;
			display: flex;
		}

		.header {
			-webkit-flex: 1;
			-ms-flex: 1;
			flex: 1;
			box-sizing: border-box;
			text-align: center;
			cursor: pointer;
			box-shadow: 0 -1px 0 0 #6495ED inset;
		}

		.header.active {
			background-color: #6495ED;
			color: white;
		}

		.header.disabled {
			color: grey;
		}

	</style>
</rg-tabs>
