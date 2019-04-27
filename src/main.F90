program main
    use naivemath
    use bettermath
    use dotmath
    
    integer :: values(8)
    integer (kind=4) :: n

    real (kind=16) :: startTime
    real (kind=16) :: endTime
    real (kind=4) :: rand4
    real (kind=8) :: rand8
    real (kind=16) :: rand16
    
    real (kind=4), allocatable :: A4(:, :), B4(:, :)
    real (kind=8), allocatable :: A8(:, :), B8(:, :)
    real (kind=16), allocatable :: A16(:, :), B16(:, :)
    real (kind=4), allocatable :: C4(:, :)
    real (kind=8), allocatable :: C8(:, :)
    real (kind=16), allocatable :: C16(:, :)
    
    call random_number(rand4)
    A4 = rand4
    call random_number(rand4)
    B4 = rand4

    call random_number(rand8)
    A8 = rand8
    call random_number(rand8)
    B8 = rand8

    call random_number(rand16)
    A16 = rand16
    call random_number(rand16)
    B16 = rand16

    call srand(seed)
    
    open(19, file='res/naivmull4.dat', status='new')
    write(*, *) "Testing  naivmull (kind 4)."
    n = 10
    do while(n <= 1280)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call cpu_time(startTime)
        C4 = naivmull(A4, B4)
        call cpu_time(endTime) 

        print '(""i" ",f15.8,"")',n , (endTime - startTime) 
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/naivmull8.dat', status='new')
    write(*, *) "Testing  naivmull (kind 8)."
    n = 10
    do while(n <= 1280)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call cpu_time(startTime)
        C8 = naivmull(A8, B8)
        call cpu_time(endTime)
            
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/naivmull16.dat', status='new')
    write(*, *) "Testing  naivmull (kind 16)."
    n = 10
    do while(n <= 1280)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call cpu_time(startTime)
        C16 = naivmull(A16, B16)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/bettmull4.dat', status='new')
    write(*, *) "Testing  bettmull (kind 4)."
    n = 10
    do while(n <= 1280)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call cpu_time(startTime)
        C4 = bettmull(A4, B4)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/bettmull8.dat', status='new')
    write(*, *) "Testing  bettmull (kind 8)."
    n = 10
    do while(n <= 1280)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call cpu_time(startTime)
        C8 = bettmull(A8, B8)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/bettmull16.dat', status='new')
    write(*, *) "Testing  bettmull (kind 16)."
    n = 10
    do while(n <= 1280)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call cpu_time(startTime)
        C16 = bettmull(A16, B16)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/dotmull4.dat', status='new')
    write(*, *) "Testing  dotmull (kind 4)."
    n = 10
    do while(n <= 1280)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call cpu_time(startTime)
        C4 = dotmull(A4, B4)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/dotmull8.dat', status='new')
    write(*, *) "Testing  dotmull (kind 8)."
    n = 10
    do while(n <= 1280)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call cpu_time(startTime)
        C8 = dotmull(A8, B8)
        call cpu_time(endTime)

        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/dotmull16.dat', status='new')
    write(*, *) "Testing  dotmull (kind 16)."
    n = 10
    do while(n <= 1280)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call cpu_time(startTime)
        C16 = dotmull(A16, B16)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)
        n = n*2
    end do    

    close(19)
    
    open(19, file='res/matmull4.dat', status='new')
    write(*, *) "Testing  matmul (kind 4)."
    n = 10
    do while(n <= 1280)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call cpu_time(startTime)
        C4 = matmul(A4, B4)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)
        n = n*2
    end do

    close(19)

    open(19, file='res/matmull8.dat', status='new')
    write(*, *) "Testing  matmul (kind 8)."
    n = 10
    do while(n <= 1280)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call cpu_time(startTime)
        C8 = matmul(A8, B8)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)
        n = n*2
    end do

    close(19)
    
    open(19, file='res/matmull16.dat', status='new')
    write(*, *) "Testing  matmul (kind 16)."
    n = 10
    do while(n <= 1280)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call cpu_time(startTime)
        C16 = matmul(A16, B16)
        call cpu_time(endTime)
        
        print '(""i" ",f15.8,"")',n , (endTime - startTime)
        write(19, '(""i" ",f15.8,"")') n , (endTime - startTime)
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)
        n = n*2
    end do   

    close(19)
end program main