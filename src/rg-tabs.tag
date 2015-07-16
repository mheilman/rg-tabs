<rg-tabs>

	<div class="tabs">
		<div class="headers">
			<div each="{ tab in tabs }" class="header { active: tab.active, disabled: tab.disabled }" onclick="{ activate }">
				<h4 class="heading" if="{ tab.opts.heading && !tab.heading }">{ tab.opts.heading }</h4>

				<div class="heading" if="{ tab.heading }">
					<rg-tag-heading-raw content="{ tab.heading }"></rg-tag-heading-raw>
				</div>
			</div>
		</div>

		<yield/>

	</div>

	<script>
		var _this = this;
		_this.onopen = opts.onopen;
		_this.tabs = _this.tags['rg-tab'];

		// If more than one tab set to active honor the first one
		_this.on('mount', function () {
			var activeTab = false;
			_this.tabs.forEach(function (tab, i) {
				// Give each tab an index
				tab.index = i;

				var tabHeading = tab.tags['rg-tab-heading'];
				if (tabHeading) {
					if (Object.prototype.toString.call(tabHeading) !== '[object Array]')
						tab.heading = tabHeading.root.innerHTML;
				}

				if (activeTab) {
					tab.active = false;
				}
				if (tab.active) {
					activeTab = true;
				}
			});
			_this.update();
		});

		// Deactivate all tabs and active selected one
		_this.activate = function (e) {
			tab = e.item.tab;
			if (!tab.disabled) {
				deselectTabs();
				if (_this.onopen) {
					_this.onopen(tab);
				}
				tab.active = true;
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
			box-shadow: 0 -1px 0 0 #404040 inset;
		}

		.heading {
			padding: 10px;
			margin: 0;
		}

		.header.active {
			background-color: #404040;
		}

		.header.active .heading {
			color: white;
		}

		.header.disabled .heading {
			color: #888;
		}

	</style>
</rg-tabs>
