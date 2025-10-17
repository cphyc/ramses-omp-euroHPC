module int_dictionary
    use amr_parameters, only: nvector
    type DICT_DATA
        integer :: value
    end type DICT_DATA

    type(DICT_DATA), parameter :: dict_null = dict_data(0)

    integer, parameter, private :: hash_size  = nvector

    include 'dictionary_impl.f90'
end module int_dictionary

module real_dictionary
    use amr_parameters, only: dp, nvector
    type DICT_DATA
        real(dp) :: value
    end type DICT_DATA

    type(DICT_DATA), parameter :: dict_null = dict_data(0.0)

    integer, parameter, private :: hash_size  = nvector

    include 'dictionary_impl.f90'
end module real_dictionary