! Description: Program for Calculating a Cavalier Length of a Beam
Program Question_2
   Implicit None  ! Enforce Explcit Variable Declaration

! Declare Constants Using Parameter
   Real, Parameter :: E = 200.0 * 10**3    ! Young Modulus (N/mm**2)
   Real, Parameter :: I = 100.0 * 10**6        ! Geometric Moment of Inertia (mm**4)
   Real, Parameter :: L = 4000.0      ! Overall Length of Beam (mm)


! Declare Variables
   Real :: y      ! Deflection (m)
   Real :: M      ! Bending Moment (Nmm)
   Real :: S      ! Shear Force (N)
   Real :: w      ! Distributed load (N/mm)
   Real :: x      ! Distance (m)
   Integer :: p


! Import Input file
  Open ( unit = 2, file = "cant_udl_input.txt", status = "old", action = "read")

! Export Output File
  open ( unit = 3, file = "cant_udl_output.txt", status = "old", action = "write")
  write (3, '(A)')'  Distance(mm)      Deflection(mm)      Bending Moment(Nmm)     Shear Force(N)'
! Loop different distance values from 0 to 40 over an inetrval of 5
  
   Do p = 1,10
  Read (2,*) w
   Do x = 0,4000,400
  
! Calculate the values of Deflection(m), Bending moment(Nmm) and Shear Force(N)
  y = ((W*x)/(24*E*I))*(6 * L**2 - 4*L*x + x**2) 
  M = -0.5 * w*(L - x)**2
  S = -w*(L - x)

! Output the Results
  Write (*,*) "Distance, x(m)=", x, "Deflection, y(m)=", y, "Bending Moment, M(Nmm)=", M, "Shear Force, S(N)=", S
  Write (3,*) "Distance, x(m)=", x, "Deflection, y(m)=", y, "Bending Moment, M(Nmm)=", M, "Shear Force, S(N)=", S
  End do
  End do
  Close (2)
  Close (3)
  End Program Question_2