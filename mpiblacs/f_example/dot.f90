!=============================================================================
real(kind=8) function pddot(ctx, n, x, y)
!=============================================================================

    implicit none

    integer:: ctx, n
    real(kind=8):: x(*), y(*)
    real(kind=8):: ddot
    external:: ddot
    external:: blacs_gridinfo, dgebs2d, dgebr2d, dgsum2d
    integer:: iam, nprocs, nprow, npcol, myprow, mypcol, i, ln
    real(kind=8):: lddot

    call blacs_gridinfo(ctx, nprow, npcol, myprow, mypcol)

    iam = myprow*npcol + mypcol
    nprocs = nprow * npcol

    if ( (myprow == 0) .and. (mypcol == 0) ) then
        call dgebs2d(ctx, 'All', 'i-ring', n, 1, x, n )
        call dgebs2d(ctx, 'All', 'i-ring', n, 1, y, n )
    else
        call dgebr2d(ctx, 'All', 'i-ring', n, 1, x, n, 0, 0 )
        call dgebr2d(ctx, 'All', 'i-ring', n, 1, y, n, 0, 0 )
    endif

    ln = n / nprocs
    i = 1 + iam * ln
    if (iam == nprocs-1) ln = ln + mod(n, nprocs)
    lddot = ddot( ln, x(i), 1, y(i), 1 )

    call dgsum2d( ctx, 'All', '1-tree', 1, 1, lddot, 1, -1, 0 )

    pddot = lddot

end

!=============================================================================
program main
!=============================================================================

implicit none
    integer:: blacs_pnum
    external:: blacs_pnum

    integer,parameter:: n = 20
    real(kind=8),dimension(n):: x, y
    integer:: ixy

    integer:: ctx, mpi_rank, mpi_size, nprow, npcol, myprow, mypcol
    integer:: irow, icol, hisrow, hiscol

    real(kind=8):: pddot
    real(kind=8):: res

    call blacs_pinfo(mpi_rank, mpi_size)

    ! Create a square grid process.
    nprow = mpi_size
    npcol = 1

    ! Get default context.
    call blacs_get(0, 0, ctx)

    ! Create grid.
    call blacs_gridinit(ctx, 'C', nprow, npcol)
    call blacs_gridinfo(ctx, nprow, npcol, myprow, mypcol)

    if ( (irow == 0) .or. (icol == 0) ) then
        do ixy = 0, n
            x(ixy) = ixy
            y(ixy) = -1
        enddo
    endif

    res = pddot(ctx, n, x, y)

    write(*,*) res

    call blacs_exit(0)

end program

