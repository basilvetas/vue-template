<template>
	<div class="sign-up">
		<p>Let's create a new account</p>
		<input type="text" placeholder="Email"></input>
		<input type="password" placeholder="Password"></input>
		<button>Sign Up</button>
		<span>or go back to <router-link to="/login">login</router-link></span>
	</div>	
</template>

<script>
  export default {
		name: 'signUp',
		data: function() {
			return {}
		},
		methods: {}
	}
</script>

<style scoped>
	.signUp {
		margin-top: 40px;
	}

	input {
		margin: 10px 0;
		width: 20%;
		padding: 15px;
	}

	button {
		margin-top: 10px;
		width: 10%;
		cursor: pointer;
	}

	span {
		display: block;
		margin-top: 20px;	
		font-size: 11px;
	}

</style>











