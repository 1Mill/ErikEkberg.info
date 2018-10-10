<template>
	<div class='[ pt3 pb5 ba bw1 flex flex-column items-center justify-around ]'>
		<div
		v-for='skill in skills' :key='skill.name'
		class='[ w-100 mv3 ph3 flex flex-row items-center justify-between ]'
		>
			<div class='[ w-50 pr2 lh-copy tr br bw1 b--light-gray ]'>
				<div
				v-for='tool in orderList(skill.tools)'
				>
					{{ tool }}
				</div>
			</div>

			<p
			class='[ w-40 lh-copy tl black b no-underline ]'
			>
				{{ skill.name }}
			</p>
		</div>
	</div>
</template>

<script>
export default {
	data: function () {
		return {
			skills: [
				{
					name: 'Back-end Architecture',
					tools: [
						'Ruby on Rails',
						'Docker',
						'PostgreSQL'
					]
				},
				{
					name: 'Front-end Design',
					tools: [
						'Vue',
						'Tachyons',
						'Foundation 6',
						'SCSS',
						'HTML',
						'CSS',
						'LESS'
					]
				},
				{
					name: '(UX) User Experience',
					tools: [
						'Mobile-first',
						'Heuristics ',
						'Responsive    ',
						'Reactive ',
						'Prototyping  '
					]
				},
				{
					name: 'Front-end Engineering',
					tools: [
						'Nuxt',
						'Docker',
						'JavaScript',
						'Axios',
						'Ajax',
						'Yarn'
					]
				},
				{
					name: 'Statistics & Modeling',
					tools: [
						'Python',
						'R',
						'SAS',
						'SPSS',
						'JASP',
						'D3'
					]
				},
			]
		}
	},
	methods: {
		orderList: function (list) {
			return list.sort((a, b) => a.length - b.length || b.localeCompare(a))
		}
	}
}
</script>
