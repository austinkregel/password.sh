console.log(
	'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghiklmnopqrstuvwxyz1234567890~!@#$%^&*()_+-='
		.split('')
		.sort(function() { return 0.5 - Math.random() })
		.join('')
		.substring(0,32)
)
