'use client'

// Next Imports
import { redirect, usePathname } from 'next/navigation'

// Config Imports
import { i18n } from '@configs/i18n'

const LangRedirect = () => {
  const pathname = usePathname()
  // Default landing page for unauthenticated root access
  const landing = '/front-pages/landing-page'

  // If the user was trying to access a specific path (not just `/`), preserve it
  // For root `/` go to the public landing page (no locale prefix)
  const finalRedirect = pathname === '/' ? landing : `/${i18n.defaultLocale}${pathname}`

  redirect(finalRedirect)
}

export default LangRedirect
