<template>
	<div
	class='[ w-100 flex flex-row item-center justify-between ]'
	>
		<div
		class='[ w-50 vh-100 cover ba ]'
		:style='{ backgroundImage: getImage}'
		/>
		<div
		class='[ w-50 flex flex colu]'
		>
			<h1>Erik Ekberg</h1>
		</div>
	</div>
</template>

<script>
export default {
	computed: {
		getImage: function () {
			const path = require('~/assets/images/ErikEkberg.jpg')
			return 'url(' + path + ')'
		}
	}
}
</script>
