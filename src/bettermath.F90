module bettermath

    public bettmull
    private bettmull_p_k_4
    private bettmull_p_k_8
    private bettmull_p_k_16
    interface bettmull
        procedure bettmull_p_k_4
        procedure bettmull_p_k_8
        procedure bettmull_p_k_16
    end interface

    contains

    function bettmull_p_k_4 (A, B) result (C)
        implicit none
        real (kind=4), intent(in), dimension(:, :) :: A, B
        real (kind=4), allocatable :: C(:, :)
        integer (kind=8) :: i, j, k
    
        allocate(C(size(A,1), size(B, 2)))
        C = 0
        
        do j=1, size(B, 2)
            do k=1, size(A, 2)
                do i=1, size(A,1)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function
    
    function bettmull_p_k_8 (A, B) result (C)
        implicit none
        real (kind=8), intent(in), dimension(:, :) :: A, B
        real (kind=8), allocatable :: C(:, :)
        integer (kind=8) :: i, j, k

        allocate(C(size(A,1), size(B, 2)))
        
        C = 0
        
        do j=1, size(B, 2)
            do k=1, size(A, 2)
                do i=1, size(A,1)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function
    
    function bettmull_p_k_16 (A, B) result (C)
        implicit none
        real (kind=16), intent(in), dimension(:, :) :: A, B
        real (kind=16), allocatable :: C(:, :)
        integer (kind=8) :: i, j, k

        allocate(C(size(A,1), size(B, 2)))
        
        C = 0
        
        do j=1, size(B, 2)
            do k=1, size(A, 2)
                do i=1, size(A,1)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function
end module