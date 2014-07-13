program main
    implicit none

    integer,parameter:: n = 4

    real(kind=4):: alpha = 0.5

    real(kind=4),dimension(n):: x  = (/0,2,4,6/)
    integer:: incx = 1

    real(kind=4),dimension(n):: y = (/0,10,20,30/)
    integer:: incy = 1

    call saxpy(N, alpha, x, incx, y, incy)

    write(*,*) y(1),y(2),y(3),y(4)
end program
