<img src="https://raw.githubusercontent.com/RiotGear/rg-tabs/master/demo/img/example.png" width="500px" />

## Use

Add this to your Riot app markup

```html
<rg-tabs onopen="{ tabOpened }">
	<rg-tab>
		<rg-tab-heading>
			Tab <em>One</em>
		</rg-tab-heading>
		First tab content
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

You can set the tab heading text either by setting the `heading` attribute or you can use the 
`rg-tab-heading` child tag. Use the attribute to set text and the tag to set HTML content.

If you add `active="true"` to more than 1 tab only the first tab will honor the request.

`disabled` tabs can't be clicked on.
