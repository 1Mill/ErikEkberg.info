<template>
	<div class='[ pt3 pb5 ba bw1 flex flex-column items-center justify-around ]'>
		<div
		v-for='job in jobs' :key='job.name'
		:style='{ backgroundImage: getImagePath(job.image) }'
		class='[ w-100 h5 cover ]'
		>
			{{ job.name }}
		</div>

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
			class='[ w-40 lh-copy tl black b no-underline flex flex-row items-center justify-between ]'
			>
				<span>{{ job.name }}</span>
				<i class='[ ml3 ][ fa fa-chevron-right ]'/>
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
					],
					image: 'ErikEkberg.jpg'
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
					],
					image: 'KEHorses.jpg'
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
					],
					image: 'KEHorses.jpg'
				},
				{
					name: 'Ekberg Sporthorses',
					link: 'https://www.ekbergsporthorses.com/',
					details: [
						'AWS',
						'Ruby on Rails'
					],
					image: 'KEHorses.jpg'
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
					],
					image: 'KEHorses.jpg'
				},
				{
					name: 'GSA',
					link: 'http://cwugsa.org',
					details: [
						'Microsoft Sway'
					],
					image: 'KEHorses.jpg'
				}
			]
		}
	},
	methods: {
		getImagePath: function (image) {
			const path = require('~/assets/images/' + image)
			return 'url(' + path + ')'
		},
		orderDetails: function (list) {
			return list.sort((a, b) => b.length - a.length || a.localeCompare(b))
		}
	}
}
</script>
