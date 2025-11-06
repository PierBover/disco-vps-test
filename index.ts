const server = Bun.serve({
	port: 3000,
	routes: {
		"/": () => new Response('Hello Disco!'),
	}
});

console.log(`Listening on ${server.url}`);