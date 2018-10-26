<template>
	<div
	class='[ vh-100 tc flex flex-column items-center justify-center ]'
	>
		<Nav/>
		<nuxt/>
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
