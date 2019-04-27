module dotmath

    public :: dotmull
    private dotmul_p_k_4
    private dotmul_p_k_8
    private dotmul_p_k_16
    interface dotmull
        procedure dotmul_p_k_4, dotmul_p_k_8, dotmul_p_k_16
    end interface

    contains

    function dotmul_p_k_4(A, B) result(C)
        implicit none
        real (kind = 4), intent(in), dimension(:, :) :: A, B
        real (kind = 4), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j

        allocate(C(size(A, 1), size(B, 2)))
        C = 0
        
        do j = 1, size(B, 2)
            do i = 1, size(A, 1)
                C(i, j) = dot_product(A(i, :), B(:, j))
            end do
        end do
    end function


    function dotmul_p_k_8(A, B) result(C)
        implicit none
        real (kind = 8), intent(in), dimension(:, :) :: A, B
        real (kind = 8), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j

        allocate(C(size(A, 1), size(B, 2)))
        C = 0
        
        do j = 1, size(B, 2)
            do i = 1, size(A, 1)
                C(i, j) = dot_product(A(i, :), B(:, j))
            end do
        end do
    end function


    function dotmul_p_k_16(A, B) result(C)
        implicit none
        real (kind = 16), intent(in), dimension(:, :) :: A, B
        real (kind = 16), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j

        allocate(C(size(A, 1), size(B, 2)))
        C = 0
        
        do j = 1, size(B, 2)
            do i = 1, size(A, 1)
                C(i, j) = dot_product(A(i, :), B(:, j))
            end do
        end do
    end function
end module