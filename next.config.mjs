/** @type {import('next').NextConfig} */
const nextConfig = {
  basePath: process.env.BASEPATH,
  redirects: async () => {
    return [
      // Root should go to the public landing page (no login required)
      {
        source: '/',
        destination: '/front-pages/landing-page',
        permanent: true,
        locale: false
      },
      // If visiting '/en' or other locale root, show the public landing page
      {
        source: '/:lang(en|fr|ar)',
        destination: '/front-pages/landing-page',
        permanent: true,
        locale: false
      },
      // Explicit admin entry: send '/admin' to the login page (admin sections remain protected by app guards)
      {
        source: '/admin',
        destination: '/en/login',
        permanent: false,
        locale: false
      },
      // Prefix unknown non-locale frontend paths with the default locale, but ignore front-pages and admin
      {
        source: '/((?!(?:en|fr|ar|front-pages|favicon.ico|admin)\\b)):path',
        destination: '/en/:path',
        permanent: true,
        locale: false
      }
    ]
  }
}

export default nextConfig
