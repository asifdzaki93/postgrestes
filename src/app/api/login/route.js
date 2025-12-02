// Next Imports
import { NextResponse } from 'next/server'
import { prisma } from '../../../libs/prisma'

export async function POST(req) {
  // Vars
  const { email, password } = await req.json()

  try {
    const user = await prisma.user.findUnique({
      where: { email }
    })

    if (user && user.password === password) {
      const { password: _, ...filteredUserData } = user

      return NextResponse.json(filteredUserData)
    } else {
      // We return 401 status code and error message if user is not found
      return NextResponse.json(
        {
          // We create object here to separate each error message for each field in case of multiple errors
          message: ['Email or Password is invalid']
        },
        {
          status: 401,
          statusText: 'Unauthorized Access'
        }
      )
    }
  } catch (error) {
    console.error('Login error:', error)
    return NextResponse.json(
      {
        message: ['Internal server error']
      },
      {
        status: 500,
        statusText: 'Internal Server Error'
      }
    )
  }
}
