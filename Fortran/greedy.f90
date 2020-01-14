program greedy
    implicit None

    double precision, parameter :: pi = 3.141592653589793238462643
    double precision, parameter :: earthRadiusM = 6367450.0
    double precision, parameter :: convert2Rad = pi / 180.0
    double precision, parameter :: convert2Deg = 180.0 / pi

    type Activity
        character(50) :: id
        double precision :: lat
        double precision :: lon
    end type Activity

    type Resource
        character(50) :: id
        double precision :: lat
        double precision :: lon
    end type Resource

    type Allocation
        character(50) :: rid
        character(50) :: aid
        double precision :: dist
    end type Allocation

    real :: result = 0
    character(50) :: id
    double precision :: lat, lon
    integer :: i  
    type(Activity) :: activities(500)
    type(Resource) :: resources(10)
    character :: type

    ! Load input text file
    open(1, file = '../Data/DataSPIF.csv', status = 'old')
    do i = 1,510
        read (1,*) id, lat, lon
        type = id(1:1)
        if (type == 'R') then
            resources(i-500)%id = id
            resources(i-500)%lat = lat
            resources(i-500)%lon = lon
        else
            activities(i)%id = id
            activities(i)%lat = lat
            activities(i)%lon = lon
        end if
    end do
    close(1) 

    print *, 'The total is: ', result

end program greedy