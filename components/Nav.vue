<template>
	<div>
		<transition name='slide'>
			<div
			v-if='active'
			class='[ fixed top-0 left-0 vh-100 w-100 bg-white bt bl bw1 flex flex-column items-center justify-center ][ bn-ns ]'
			>
				<div
				class='[ w-100 mb3 flex flex-row items-center justify-around ][ w-40-ns ][][ w-20-l ]'
				>
					<a
					v-for='link in links.external' :key='link.name'
					:href='link.path' target='_blank'
					class='[ black no-underline flex flex-column items-center ]'
					>
						<i
						class='[ fa-2x ]'
						:class='link.class'
						/>
						<div class='[ mt1 f7 moon-gray ]'>
							{{ link.name }}
						</div>
					</a>
				</div>

				<router-link
				v-for='link in links.internal' :key='link.name'
				:to='link.path'
				@click.native='toggleActive'
				class='[ w5 mt3 pv3 tl black bb b--moon-gray no-underline ]'
				>
					{{ link.name }}
				</router-link>

				<a href='/Erik-Ekberg.CV.pdf'
				@click.native='toggleActive'
				class='[ w5 mt3 pv3 tl black bb b--moon-gray no-underline ]'
				>
					Curriculum Vitae
				</a>
			</div>
		</transition>

		<div
		@click='toggleActive'
		class='[ fixed bottom-2 right-2 bg-white ][ top-2-ns ]'
		>
			<i
			v-if='active'
			class='[ pv2 ph3 f4 ba br2 b--light-gray ][ fas fa-times ]'
			/>

			<i
			v-else
			class='[ pv2 ph3 f4 ba br2 b--light-gray ][ fas fa-bars ]'
			/>
		</div>
	</div>
</template>

<script>
export default {
	data: function () {
		return {
			active: false,
			links: {
				external: [
					{ name: 'GitHub', path: 'https://github.com/1Mill', class: 'fab fa-github' },
					{ name: 'erik.ekberg@outlook.com', path: 'mailto:erik.ekberg@outlook.com', class: 'fas fa-envelope' },
					{ name: 'LinkedIn', path: 'https://www.linkedin.com/in/erik-allan-ekberg', class: 'fab fa-linkedin-in' },
				],

				internal: [
					{ name: 'Home', path: '/' },
					{ name: 'About', path: '/about-me' },
					{ name: 'Portfolio', path: '/portfolio' },
					{ name: 'Know-how', path: '/know-how' }
				]
			}
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
		transition: 0.35s ease all;
	}

	.slide-enter,
	.slide-leave-to {
		transform: translateY(100vh) translateX(100vw);
	}

	@media (min-width: 768px) {
		.slide-enter,
		.slide-leave-to {
			transform: translateY(0) translateX(0);
			opacity: 0;
		}
	}
</style>
