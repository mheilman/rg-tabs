<img src="https://raw.githubusercontent.com/RiotGear/rg-tabs/master/demo/img/example.png" width="500px" />

## Use

Add this to your Riot app markup

```html
<rg-tabs onopen="{ tabOpened }">
	<rg-tab heading="Tab 1">
		Tab one
	</rg-tab>

	<rg-tab heading="Tab 2" active="true">
		Tab two
	</rg-tab>

	<rg-tab heading="Tab 3">
		Tab three
	</rg-tab>

	<rg-tab heading="Tab 4" disabled="true">
		Tab four
	</rg-tab>

	<rg-tab heading="Tab 5">
		Tab five
	</rg-tab>
</rg-tabs>
```

There is no additional JavaScript required to have working 
tabs however if you want to handle open tab events add the following:

```javascript
this.tabOpened = function (tab) {
	console.log(tab.index); // the index of the active tab
};
```

If you add `active="true"` to more than 1 tab only the first tab will honor the request.

`disabled` tabs can't be clicked on.