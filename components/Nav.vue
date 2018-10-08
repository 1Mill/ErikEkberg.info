<template>
	<div
	>
		<div
		v-if='active'
		class='[ fixed top-0 left-0 vh-100 w-100 bg-white ]'
		>
			OPEN NAV
		</div>

		<div
		@click='toggleActive'
		class='[ fixed bottom-2 right-2 pa2 ]'
		>
			<div
			v-if='active'
			>
				CLOSE
			</div>

			<div
			v-else
			>
				MENU
			</div>
		</div>
	</div>
</template>

<script>
export default {
	data: function () {
		return {
			active: true
		}
	},
	methods: {
		toggleActive: function () {
			this.active = !this.active
		}
	}
}
</script>
