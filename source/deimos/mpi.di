/*
 * Copyright (c) 2004-2005 The Trustees of Indiana University and Indiana
 *                         University Research and Technology
 *                         Corporation.  All rights reserved.
 * Copyright (c) 2004-2021 The University of Tennessee and The University
 *                         of Tennessee Research Foundation.  All rights
 *                         reserved.
 * Copyright (c) 2004-2007 High Performance Computing Center Stuttgart,
 *                         University of Stuttgart.  All rights reserved.
 * Copyright (c)     2004-2005 The Regents of the University of California.
 *                         All rights reserved.
 * Copyright (c) 2007-2022 Cisco Systems, Inc.  All rights reserved
 * Copyright (c) 2008-2009 Sun Microsystems, Inc.  All rights reserved.
 * Copyright (c) 2009-2012 Oak Rigde National Laboratory.  All rights reserved.
 * Copyright (c) 2011-2020 Sandia National Laboratories. All rights reserved.
 * Copyright (c) 2012-2018 Los Alamos National Security, LLC. All rights
 *                         reserved.
 * Copyright (c) 2011-2013 INRIA.  All rights reserved.
 * Copyright (c) 2015      University of Houston. All rights reserved.
 * Copyright (c) 2015-2023 Research Organization for Information Science
 *                         and Technology (RIST).  All rights reserved.
 * Copyright (c) 2017-2022 IBM Corporation.  All rights reserved.
 * Copyright (c) 2018      FUJITSU LIMITED.  All rights reserved.
 * Copyright (c) 2021-2022 Google, LLC. All rights reserved.
 * Copyright (c) 2021-2022 Amazon.com, Inc. or its affiliates.  All Rights
 *                         reserved.
 * Copyright (c) 2021      Bull S.A.S. All rights reserved.
 * Copyright (c) 2018      Triad National Security, LLC. All rights
 * Copyright (c) 2018-2022 Triad National Security, LLC. All rights
 *                         reserved.
 * $COPYRIGHT$
 *
 * Additional copyrights may follow
 *
 * $HEADER$
 */

// additionally I'd like to thank https://github.com/1100110/OpenMPI/blob/master/mpi.d
module deimos.openmpi.mpi;



nothrow extern (C)
{


alias ompi_fortran_integer_t = int;
alias MPI_Fint = ompi_fortran_integer_t;
struct MPI_Comm;

alias ompi_communicator_t = MPI_Comm;

struct ompi_status_public_t {
    int MPI_SOURCE; 
    int MPI_TAG;
    int MPI_ERROR;
    int _cancelled;
    size_t _ucount;
}

struct ompi_f08_status_public_t {
    MPI_Fint MPI_SOURCE; 
    MPI_Fint MPI_TAG;
    MPI_Fint MPI_ERROR;
}

/*
 * User typedefs
 */

 alias MPI_Datarep_extent_function = int(MPI_Datatype, MPI_Aint *, void *);
 alias MPI_Datarep_conversion_function = int(void *, MPI_Datatype, int, void *, MPI_Offset, void *);
 alias MPI_Comm_errhandler_function = void(MPI_Comm *, int *, ...);
 alias MPI_Session_errhandler_function = void(MPI_Session *, int *, ...);
 /* This is a little hackish, but errhandler.h needs space for a
       MPI_File_errhandler_function.  While it could just be removed, this
       allows us to maintain a stable ABI within OMPI, at least for
       apps that don't use MPI I/O. */
 alias ompi_file_errhandler_function = void(MPI_File *, int *, ...);
 alias MPI_Win_errhandler_function = void(MPI_Win *, int *, ...);
 alias MPI_User_function = void(void *, void *, int *, MPI_Datatype *);
 alias MPI_Comm_copy_attr_function = int(MPI_Comm, int, void *, void *, void *, int *);
 alias MPI_Comm_delete_attr_function = int(MPI_Comm, int, void *, void *);
 alias MPI_Type_copy_attr_function = int(MPI_Datatype, int, void *, void *, void *, int *);
 alias MPI_Type_delete_attr_function = int(MPI_Datatype, int, void *, void *);
 alias MPI_Win_copy_attr_function = int(MPI_Win, int, void *, void *, void *, int *);
 alias MPI_Win_delete_attr_function = int(MPI_Win, int, void *, void *);
 alias MPI_Grequest_query_function = int(void *, MPI_Status *);
 alias MPI_Grequest_free_function = int(void *);
 alias MPI_Grequest_cancel_function = int(void *, int);


 /*
 * Miscellaneous constants
 *
 * NOTE: Many of the integer constants below *also* appear in
 * ompi/include/mpif-values.pl.  If you change any of these integer
 * values below, make sure to also change the corresponding values in
 * mpif-values.pl.
 */

immutable MPI_ANY_SOURCE = -1;  /* match any source rank */
immutable MPI_PROC_NULL = -2; /* rank of null process */
immutable MPI_ROOT = -4; /* special value for intercomms */
immutable MPI_ANY_TAG = -1;  /* match any message tag */
immutable MPI_MAX_PROCESSOR_NAME = 0; /* max proc. name length ++ opal values will be set to 0 while i try to get autoconf replacements*/
immutable MPI_MAX_ERROR_STRING = 0; /* max error message length */
immutable MPI_MAX_OBJECT_NAME = 0;    /* max object name length */
immutable MPI_MAX_LIBRARY_VERSION_STRING = 256;  /* max length of library version string */
// bad formatting starts here I apologize
immutable MPI_UNDEFINED =  -32766;                  /* undefined stuff */
immutable MPI_DIST_GRAPH = 3;                       /* dist graph topology */
immutable MPI_CART    = 1;                       /* cartesian topology */
immutable MPI_GRAPH  =      2;              /* graph topology */
immutable MPI_KEYVAL_INVALID   = -1;                      /* invalid key value */

/*
 * More constants
 */

// todo translate the fucky pointers only half of my  brain works rigt now

immutable MPI_BSEND_OVERHEAD =   128;         /* size of bsend header + ptr */
immutable MPI_MAX_INFO_KEY = 0; // opal values
immutable MPI_MAX_INFO_VAL = 0;             /* max info value length */
immutable MPI_MAX_PORT_NAME = 0;                  /* max port name length */
immutable MPI_ORDER_C = 0;                          /* C row major order */
immutable MPI_ORDER_FORTRAN = 1;                      /* Fortran column major order */
immutable MPI_DISTRIBUTE_BLOCK = 0;                    /* block distribution */
immutable MPI_DISTRIBUTE_CYCLIC = 1;                     /* cyclic distribution */
immutable MPI_DISTRIBUTE_NONE = 2;                     /* not distributed */
immutable MPI_DISTRIBUTE_DFLT_DARG = -1;                  /* default distribution arg */
immutable MPI_MAX_PSET_NAME_LEN = 0;  /* max pset name len */
immutable MPI_MAX_STRINGTAG_LEN = 0; /* max length of string arg to comm from group funcs*/

// Next section to impl. : Constants for C code to access elements in Fortran MPI status array.
// I'm going to sleep now.

}
