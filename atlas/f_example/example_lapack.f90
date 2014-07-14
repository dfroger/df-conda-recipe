program main
    integer, parameter:: m = 4
    integer, parameter:: n = 4
    real(kind=4),dimension(m,n):: A = reshape( &
        (/1,  1,   2,   4, &
          2,  7,  19,  33, &
          3,  9,  32,  90, &
          4, 11,  38, 115 /), (/m,n/))
    integer:: lda = M;
    integer,dimension(M):: ipiv
    integer:: info
    
    call sgetrf(M, N, A, lda, ipiv, info)

    write(*,*) info
    write(*,*) ipiv(1), ipiv(2), ipiv(3), ipiv(4)
    write(*,*) A(1,1), A(1,2), A(1,3), A(1,4)
    write(*,*) A(2,1), A(2,2), A(2,3), A(2,4)
    write(*,*) A(3,1), A(3,2), A(3,3), A(3,4)
    write(*,*) A(4,1), A(4,2), A(4,3), A(4,4)
end program
