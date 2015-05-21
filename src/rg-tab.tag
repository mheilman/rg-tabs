<rg-tab>

	<div class="tab { active: active, disabled: opts.disabled }">
		<div class="header" onclick="{ activate }">
			<h4>{ opts.heading }</h4>
		</div>

		<div class="body" show="{ active }">
			<yield/>
		</div>
	</div>

	<script>
		var _this = this;
		_this.active = opts.active;

		_this.activate = function () {
			if (!opts.disabled) {
				_this.trigger('tab:selected');
			}
		};
	</script>

	<style scoped>

		.tab .header {
			cursor: pointer;
		}

		.tab.active {
			color: green;
		}

		.tab.disabled {
			color: grey;
		}

	</style>

</rg-tab>
