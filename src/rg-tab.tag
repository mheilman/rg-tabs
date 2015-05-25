<rg-tab>

	<div show="{ active }" class="tab">
		<yield/>
	</div>

	<script>
		var _this = this;
		_this.active = opts.active;
		_this.disabled = opts.disabled;
	</script>

	<style>

		.tab {
			padding: 10px;
		}

	</style>

</rg-tab>
