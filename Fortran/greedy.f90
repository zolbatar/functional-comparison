module types

    type Activity
        character(50) :: id
        double precision :: lat
        double precision :: lon
        logical :: used 
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

end module

module constants

    double precision, parameter :: pi = 3.141592653589793238462643
    double precision, parameter :: earthRadiusM = 6367450.0
    double precision, parameter :: convert2Rad = pi / 180.0
    double precision, parameter :: convert2Deg = 180.0 / pi

end module

pure function distance_between_points(lat1, lon1, lat2, lon2) result (distance)
    use constants
    implicit None

    double precision, intent (in) :: lat1
    double precision, intent (in) :: lon1
    double precision, intent (in) :: lat2
    double precision, intent (in) :: lon2
    double precision :: distance
    double precision :: dStartLatInRad, dStartLongInRad, dEndLatInRad, dEndLongInRad, dLongitude, dLatitude
    double precision :: dSinHalfLatitude, dSinHalfLongitude, a, b, c

    dStartLatInRad = lat1 * convert2Rad
    dStartLongInRad = lon1 * convert2Rad
    dEndLatInRad = lat2 * convert2Rad
    dEndLongInRad = lon2 * convert2Rad
    dLongitude = dEndLongInRad - dStartLongInRad
    dLatitude = dEndLatInRad - dStartLatInRad
    dSinHalfLatitude = sin(dLatitude * 0.5)
    dSinHalfLongitude = sin(dLongitude * 0.5)
    a = (dSinHalfLatitude * dSinHalfLatitude) + cos(dStartLatInRad) * cos(dEndLatInRad)
    b = a * (dSinHalfLongitude * dSinHalfLongitude)
    c = atan2(sqrt(b), sqrt(1.0 - b))
    distance = earthRadiusM * (c + c)
 end function

function schedule(activities, resources, allocations) result (distance)
    use types
    implicit None

    type(Activity), intent(inout) :: activities(500)
    type(Resource), intent(in) :: resources(10)
    type(Allocation), intent(inout) :: allocations(500)
    double precision :: distance

    integer :: i, j, l, k
    double precision :: this_distance
    double precision :: lowest_distance
    integer :: lowest_id
    double precision :: distance_between_points

    ! reset used
    activities%used = .false.

    ! Loop through each resource in turn
    k = 1
    do i = 1,10
        do l = 1,50
            lowest_distance = huge(0.0)
            lowest_id = -1
            do j = 1,500
                if (.not. activities(j)%used) then
                    this_distance = distance_between_points(resources(i)%lat, resources(i)%lon, &
                                                            activities(j)%lat, activities(j)%lon)
                    if (this_distance < lowest_distance) then
                        lowest_distance = this_distance
                        lowest_id = j
                    end if
                end if
            end do
            activities(lowest_id)%used = .true.
            allocations(k)%rid = resources(i)%id
            allocations(k)%aid = activities(lowest_id)%id
            allocations(k)%dist = lowest_distance
            k = k + 1
        end do
    end do

    ! add up distances
    distance = 0.0
    do i = 1,500
        distance = distance + allocations(i)%dist
    end do
end function

program greedy
    use types
    implicit None

    double precision :: result = 0
    character(50) :: id
    double precision :: lat, lon
    integer :: i  
    type(Activity) :: activities(500)
    type(Resource) :: resources(10)
    type(Allocation) :: allocations(500)
    character :: type
    double precision :: schedule

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

    do i = 1,100
        result = schedule(activities, resources, allocations)
        print *, i, ': ', result
    end do

end program