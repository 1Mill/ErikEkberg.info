<template>
	<div class='[ pt3 pb5 ba bw1 flex flex-column items-center justify-around ]'>
		<div
		v-for='job in jobs' :key='job.name'
		class='[ w-100 mv3 ph3 flex flex-row items-center justify-between ]'
		>
			<div class='[ w-50 pr2 lh-copy tr br bw1 b--light-gray ]'>
				<div
				v-for='detail in orderDetails(job.details)'
				>
					{{ detail }}
				</div>
			</div>

			<a
			:href='job.link' target='_blank'
			class='[ w-40 lh-copy tl black b no-underline ]'
			>
				{{ job.name }}
			</a>
		</div>
	</div>
</template>

<script>
export default {
	data: function () {
		return {
			jobs: [
				{
					name: 'Erik Ekberg',
					link: 'https://www.erikekberg.info/',
					details: [
						'Vue',
						'Nuxt',
						'Docker',
						'JavaScript',
						'GitHub Pages'
					]
				},
				{
					name: 'UX Research (OFFLINE)',
					link: 'https://www.onlinetesting.solutions/',
					details: [
						'Ruby on Rails',
						'REST API',
						'JavaScript',
						'Axois',
						'AWS',
						'Nuxt',
						'Vue'
					]
				},
				{
					name: 'TI4 Randomizer',
					link: 'https://www.tiraces.com/',
					details: [
						'Vue',
						'Nuxt',
						'JavaScript',
						'Axios',
						'Docker',
						'JSON API',
						'GitHub Pages',
						'R'
					]
				},
				{
					name: 'Ekberg Sporthorses',
					link: 'https://www.ekbergsporthorses.com/',
					details: [
						'AWS',
						'Ruby on Rails'
					]
				},
				{
					name: 'Nuxt SSR',
					link: 'https://github.com/1Mill/nuxt-ssr-example',
					details: [
						'Nuxt',
						'Axois',
						'Vue',
						'JavaScript',
						'Docker'
					]
				},
				{
					name: 'GSA',
					link: 'http://cwugsa.org',
					details: [
						'Microsoft Sway'
					]
				}
			]
		}
	},
	methods: {
		orderDetails: function (list) {
			return list.sort((a, b) => b.length - a.length || a.localeCompare(b))
		}
	}
}
</script>
