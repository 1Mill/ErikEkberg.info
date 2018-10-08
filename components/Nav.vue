<template>
	<div
	>
		<transition name='slide'>
			<div
			v-if='active'
			class='[ fixed top-0 left-0 vh-100 w-100 bg-white bt bl bw1 flex flex-column justify-start ]'
			>
				<router-link
				v-for='link in links' :key='link.name'
				:to='link.path'
				@click.native='toggleActive'
				>
					{{ link.name }}
				</router-link>
			</div>
		</transition>

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
			active: false,
			links: [
				{ name: 'Home', path: '/' },
				{ name: 'Portfolio', path: '/portfolio' },
				{ name: 'Tools', path: '/tools' },
			]
		}
	},
	methods: {
		toggleActive: function () {
			this.active = !this.active
		}
	}
}
</script>

<style scoped>
	.slide-enter-active,
	.slide-leave-active {
		transition: 0.3s ease all;
	}

	.slide-enter,
	.slide-leave-to {
		transform: translateY(100vh) translateX(100vw);
	}
</style>
