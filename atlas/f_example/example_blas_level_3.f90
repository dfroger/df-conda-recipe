program main
    integer,parameter:: m = 2
    integer,parameter:: k = 3
    integer,parameter:: n = 4

    real(kind=4):: alpha = 0.5
    real(kind=4),dimension(m,k):: A = reshape( &
        (/0, 6, &
          2, 8, &
          4, 10 /), (/m,k/))
    integer:: lda = m

    real(kind=4),dimension(k,n):: B = reshape((/ &
        0, 4,  8, &
        1, 5,  9, &
        2, 6, 10, &
        3, 7, 11 /), (/k,n/))
    integer:: ldb = k

    real(kind=4):: beta = 2.
    real(kind=4),dimension(m,n):: C = reshape((/ &
        0. ,  2. , &
        0.5,  2.5, &
        1. ,  3. , &
        1.5,  3.5 /),(/m,n/))
    integer:: ldc = m

    call sgemm("N", "N", m, n, k, alpha, A, lda, B, ldb, beta, C, ldc)

    write(*,*) C(1,1),C(1,2),C(1,3),C(1,4)
    write(*,*) C(2,1),C(2,2),C(2,3),C(2,4)

end program
