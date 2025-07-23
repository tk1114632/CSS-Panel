const packageJson = require('./package.json')

/** @type {import('next').NextConfig} */
const nextConfig = {
	distDir: 'build',
	output: 'standalone',
	images: {
		remotePatterns: [
			{
				protocol: 'https',
				hostname: '**.steamstatic.com',
			},
		],
	},
	env: {
		version: packageJson.version,
	},
}

module.exports = nextConfig
