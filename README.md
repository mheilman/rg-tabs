# RiotGear

## rg-tabs

<!---
<img src="https://raw.githubusercontent.com/RiotGear/rg-modal/master/demo/img/example.png" width="500px" />
-->

### Use

Add this to your Riot app markup

```html
<rg-tabs>
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

There is no additional JavaScript required.

If you add `active="true"` to more than 1 tab only the first tab will honor the request.

`disabled` tabs can't be clicked on.