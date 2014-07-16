program main

integer:: blacs_pnum
external:: blacs_pnum

integer:: ctx, mpi_rank, mpi_size, nprow, npcol, myprow, mypcol
integer:: icaller, irow, icol, hisrow, hiscol

call blacs_pinfo(mpi_rank, mpi_size)

! Create a square grid process.
nprow = int( sqrt( real(mpi_size) ) )
npcol = mpi_size / nprow

! Get default context.
call blacs_get(0, 0, ctx)

! Create grid.
call blacs_gridinit(ctx, 'R', nprow, npcol)
call blacs_gridinfo(ctx, nprow, npcol, myprow, mypcol)

if (myprow==0 .and. mypcol==0) then
    write(*,*) "nprow,npcol: ", nprow, npcol
endif

if ( (nprow == -1) .or. (npcol == -1) ) then
    call blacs_exit(0)
    stop
endif

! Get process ID.
icaller = blacs_pnum(ctx, myprow, mypcol)

write(*,*) "icaller, myprow, mypcol:", icaller,myprow,mypcol

! Process (0,0) receive "icaller" from all nodes.
if ( (myprow == 0) .and. (mypcol == 0) ) then

    do irow = 0, nprow-1
    do icol = 0, npcol-1
        if ( (irow /= 0) .or. (icol /= 0) ) then
            call igerv2d(ctx, 1, 1, icaller, 1, irow, icol) 
            write(*,*) "Received:", icaller
        endif

        ! Make sure icaller is where we think in process grid.
        call blacs_pcoord(ctx, icaller, hisrow, hiscol)
        if ( (hisrow /= irow) .or. (hiscol /= icol) ) then
            write(*,*) "Error with icaller."
            stop
        end if
    enddo
    enddo

else
    call igesd2d(ctx, 1, 1, icaller, 1, 0, 0)
    write(*,*) "Sent", icaller
end if

call blacs_exit(0)
end program

