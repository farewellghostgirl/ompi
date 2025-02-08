// default ac variables to fallback 
immutable OPAL_BUILD_PLATFORM_COMPILER_FAMILYID = 1;
immutable OPAL_BUILD_PLATFORM_COMPILER_VERSION = 1;
immutable OPAL_STDC_HEADERS = 1;
immutable OPAL_HAVE_ATTRIBUTE_DEPRECATED = 1; 
immutable OPAL_HAVE_ATTRIBUTE_DEPRECATED_ARGUMENT = 1;
immutable OPAL_HAVE_ATTRIBUTE_ERROR = 1;
immutable OPAL_HAVE_SYS_TIME_H = 1; 
immutable OPAL_HAVE_SYS_SYNCH_H = 1;

/* Define to 1 if the system has the type `long long'. */
immutable OPAL_HAVE_LONG_LONG = 1;

/* The size of a `bool', as computed by sizeof. */
immutable OPAL_SIZEOF_BOOL = 1;

// /!\ defaulting to 64-bit gcc values for this segment

/* The size of a `int', as computed by sizeof. */
immutable OPAL_SIZEOF_INT = 4; 

/* The size of a `void*', as computed by sizeof. */
immutable OPAL_SIZEOF_VOID_P = 8;

/* Maximum length of datarep string (default is 128) */
immutable OPAL_MAX_DATAREP_STRING = 128;

/* Maximum length of error strings (default is 256) */
immutable OPAL_MAX_ERROR_STRING = 256;

/* Maximum length of info keys (default is 36) */
immutable OPAL_MAX_INFO_KEY = 36;

/* Maximum length of info vals (default is 256) */
immutable OPAL_MAX_INFO_VAL = 256;

/* Maximum length of object names (default is 64) */
immutable OPAL_MAX_OBJECT_NAME = 64;

/* Maximum length of port names (default is 1024) */
immutable OPAL_MAX_PORT_NAME = 1024;

/* Maximum length of processor names (default is 256) */
immutable OPAL_MAX_PROCESSOR_NAME = 256;

/* Maximum length of processor names (default is 1024) */
immutable OPAL_MAX_PSET_NAME_LEN = 1024;

/* Maximum length of from group tag (default is 256) */
immutable OPAL_MAX_STRINGTAG_LEN = 256;

/* The number or Fortran INTEGER in MPI Status */
immutable OMPI_FORTRAN_STATUS_SIZE = 0;

/* Whether we have FORTRAN LOGICAL*1 or not */
immutable OMPI_HAVE_FORTRAN_LOGICAL1 = 1;

/* Whether we have FORTRAN LOGICAL*2 or not */
immutable OMPI_HAVE_FORTRAN_LOGICAL2 = 1;

/* Whether we have FORTRAN LOGICAL*4 or not */
immutable OMPI_HAVE_FORTRAN_LOGICAL4 = 1;

/* Whether we have FORTRAN LOGICAL*8 or not */
immutable OMPI_HAVE_FORTRAN_LOGICAL8 = 1;

/* Whether we have FORTRAN INTEGER*1 or not */
immutable OMPI_HAVE_FORTRAN_INTEGER1 = 1;

/* Whether we have FORTRAN INTEGER*16 or not */
immutable OMPI_HAVE_FORTRAN_INTEGER16 = 1;

/* Whether we have FORTRAN INTEGER*2 or not */
immutable OMPI_HAVE_FORTRAN_INTEGER2 = 1;

/* Whether we have FORTRAN INTEGER*4 or not */
immutable OMPI_HAVE_FORTRAN_INTEGER4 = 1;

/* Whether we have FORTRAN INTEGER*8 or not */
immutable OMPI_HAVE_FORTRAN_INTEGER8 = 1;

/* Whether we have FORTRAN REAL*16 or not */
immutable OMPI_HAVE_FORTRAN_REAL16 = 1;

/* Whether we have FORTRAN REAL*2 or not */
immutable OMPI_HAVE_FORTRAN_REAL2 = 1;

/* Whether we have FORTRAN REAL*4 or not */
immutable OMPI_HAVE_FORTRAN_REAL4 = 1;

/* Whether we have FORTRAN REAL*8 or not */
immutable OMPI_HAVE_FORTRAN_REAL8 = 1;

/* Whether in include MPI-1 compatibility */
immutable OMPI_ENABLE_MPI1_COMPAT = 0;

/* Whether we have float _Complex  or not */
immutable HAVE_FLOAT__COMPLEX = 1;

/* Whether we have double _Complex  or not */
immutable HAVE_DOUBLE__COMPLEX = 1;

/* Whether we have long double _Complex  or not */
immutable HAVE_LONG_DOUBLE__COMPLEX = 1;

/* 
#undef OMPI_MPI_AINT_TYPE



#undef OMPI_MPI_OFFSET_TYPE

#undef OMPI_OFFSET_DATATYPE

#undef OMPI_MPI_OFFSET_SIZE


#undef OMPI_MPI_COUNT_TYPE

#undef ptrdiff_t

#undef OMPI_PARAM_CHECK = 0;

*/
