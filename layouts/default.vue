<template>
	<div
	class='[ vh-100 tc flex flex-column items-center justify-center ]'
	>
		<Nav/>

		<nuxt
		class='[ h-100 w-100 ph4 ba bw1 flex flex-column items-center justify-center ][ h-50-ns w-40-ns ][][ w-20-l ]'
		/>
	</div>
</template>

<script>
import Nav from '~/components/Nav'

export default {
	components: {
		Nav
	}
}
</script>
