program main
    implicit none
  
    integer,parameter:: n = 4

    real(kind=4),dimension(n*n):: A = (/ &
        1,  0,  0,  0, &
        2,  5,  0,  0, &
        3,  6,  8,  0, &
        4,  7,  9, 10 /)
    
    integer:: lda = n
    real(kind=4),dimension(n):: b = (/20,38,43,30/)
    integer:: incb = 1

    call strsv("U","N","N",N,A,lda,b,incb)

    write(*,*) b(1),b(2),b(3),b(4)
end program
