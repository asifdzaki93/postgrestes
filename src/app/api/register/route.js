// Next Imports
import { NextResponse } from 'next/server'
import { prisma } from '../../../libs/prisma'

export async function POST(req) {
  // Vars
  const { name, email, password } = await req.json()

  try {
    // Check if user already exists
    const existingUser = await prisma.user.findUnique({
      where: { email }
    })

    if (existingUser) {
      return NextResponse.json(
        {
          message: ['User with this email already exists']
        },
        {
          status: 409,
          statusText: 'Conflict'
        }
      )
    }

    // Create new user
    const newUser = await prisma.user.create({
      data: {
        name,
        email,
        password // Note: In production, hash the password
      }
    })

    // Return user data without password
    const { password: _, ...userData } = newUser

    return NextResponse.json(userData, { status: 201 })
  } catch (error) {
    console.error('Registration error:', error)
    return NextResponse.json(
      {
        message: ['Internal server error']
      },
      {
        status: 500,
        statusText: 'Internal Server Error'
      }
    )
  } finally {
    await prisma.$disconnect()
  }
}
