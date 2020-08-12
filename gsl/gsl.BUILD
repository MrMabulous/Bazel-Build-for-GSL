load("@//third_party:generate_gsl_lib.bzl", "generate_gsl")
load("@//third_party:make_struct.bzl", "make_struct")

config_setting(
    name = "windows",
    constraint_values = [
        "@bazel_tools//platforms:windows",
    ],
)

#
# When GSL is built with CMake, it generates config.h
#
# To make this work with Bazel, versions of those files are inlined here,
# along with genrule/cc_library rules to paste them into files & include them
# as headers.
#

CONFIG_H_MSVC = """
#ifndef CONFIG_H_
#define CONFIG_H_

/* Disable deprecated functions and enums while building */
#undef GSL_DISABLE_DEPRECATED

/* Define if you have inline with C99 behavior */
#define HAVE_C99_INLINE 1

/* Define to 1 if you have the declaration of `acosh', and to 0 if you don't.
   */
#define HAVE_DECL_ACOSH 1

/* Define to 1 if you have the declaration of `asinh', and to 0 if you don't.
   */
#define HAVE_DECL_ASINH 1

/* Define to 1 if you have the declaration of `atanh', and to 0 if you don't.
   */
#define HAVE_DECL_ATANH 1

/* Define to 1 if you have the declaration of `expm1', and to 0 if you don't.
   */
#define HAVE_DECL_EXPM1 1

/* Define to 1 if you have the declaration of `feenableexcept', and to 0 if
   you don't. */
#define HAVE_DECL_FEENABLEEXCEPT 0

/* Define to 1 if you have the declaration of `fesettrapenable', and to 0 if
   you don't. */
#define HAVE_DECL_FESETTRAPENABLE 0

/* Define to 1 if you have the declaration of `finite', and to 0 if you don't.
   */
#define HAVE_DECL_FINITE 1

/* Define to 1 if you have the declaration of `fprnd_t', and to 0 if you
   don't. */
#define HAVE_DECL_FPRND_T 0

/* Define to 1 if you have the declaration of `frexp', and to 0 if you don't.
   */
#define HAVE_DECL_FREXP 1

/* Define to 1 if you have the declaration of `hypot', and to 0 if you don't.
   */
#define HAVE_DECL_HYPOT 1

/* Define to 1 if you have the declaration of `isfinite', and to 0 if you
   don't. */
#define HAVE_DECL_ISFINITE 1

/* Define to 1 if you have the declaration of `isinf', and to 0 if you don't.
   */
#define HAVE_DECL_ISINF 1

/* Define to 1 if you have the declaration of `isnan', and to 0 if you don't.
   */
#define HAVE_DECL_ISNAN 1

/* Define to 1 if you have the declaration of `ldexp', and to 0 if you don't.
   */
#define HAVE_DECL_LDEXP 1

/* Define to 1 if you have the declaration of `log1p', and to 0 if you don't.
   */
#define HAVE_DECL_LOG1P 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#undef HAVE_DLFCN_H

/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
#undef HAVE_DOPRNT

/* Defined if you have ansi EXIT_SUCCESS and EXIT_FAILURE in stdlib.h */
#define HAVE_EXIT_SUCCESS_AND_FAILURE 1

/* Defined on architectures with excess floating-point precision */
#define HAVE_EXTENDED_PRECISION_REGISTERS 1

/* Define if x86 processor has sse extensions. */
#define HAVE_FPU_X86_SSE 1

/* Define to 1 if you have the <ieeefp.h> header file. */
#undef HAVE_IEEEFP_H

/* Define this if IEEE comparisons work correctly (e.g. NaN != NaN) */
#define HAVE_IEEE_COMPARISONS 1

/* Define this if IEEE denormalized numbers are available */
#define HAVE_IEEE_DENORMALS 1

/* Define if you have inline */
#define HAVE_INLINE 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `m' library (-lm). */
#undef HAVE_LIBM

/* Define to 1 if you have the `memcpy' function. */
#define HAVE_MEMCPY 1

/* Define to 1 if you have the `memmove' function. */
#define HAVE_MEMMOVE 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define this if printf can handle %Lf for long double */
#define HAVE_PRINTF_LONGDOUBLE 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strdup' function. */
#define HAVE_STRDUP 1

/* Define to 1 if you have the <strings.h> header file. */
#undef HAVE_STRINGS_H

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strtol' function. */
#define HAVE_STRTOL 1

/* Define to 1 if you have the `strtoul' function. */
#define HAVE_STRTOUL 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#undef HAVE_SYS_STAT_H

/* Define to 1 if you have the <sys/types.h> header file. */
#undef HAVE_SYS_TYPES_H

/* Define to 1 if you have the <unistd.h> header file. */
#undef HAVE_UNISTD_H

/* Define to 1 if you have the `vprintf' function. */
#define HAVE_VPRINTF 1

/* Define if you need to hide the static definitions of inline functions */
#define HIDE_INLINE_STATIC 1

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#undef LT_OBJDIR

/* Name of package */
#define PACKAGE "gsl"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME PACKAGE

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME PACKAGE

/* Define to the home page for this package. */
#define PACKAGE_URL "http://mirror.easyname.at/gnu/gsl/gsl-2.6.tar.gz"

/* Defined if this is an official release */
#undef RELEASED

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Version number of package */
#define VERSION "2.6"

/* Define to the version of this package. */
#define PACKAGE_VERSION VERSION

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "gsl 2.6"

/* Define to 1 if type `char' is unsigned and you are not using gcc.  */
#ifndef __CHAR_UNSIGNED__
# undef __CHAR_UNSIGNED__
#endif

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#define inline __inline
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
#undef size_t

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
#undef volatile

/* Use 0 and 1 for EXIT_SUCCESS and EXIT_FAILURE if we don't have them */
#if !HAVE_EXIT_SUCCESS_AND_FAILURE
#define EXIT_SUCCESS 0
#define EXIT_FAILURE 1
#endif

/* Define one of these if you have a known IEEE arithmetic interface */
#undef HAVE_GNUSPARC_IEEE_INTERFACE
#undef HAVE_GNUM68K_IEEE_INTERFACE
#undef HAVE_GNUPPC_IEEE_INTERFACE
#undef HAVE_GNUX86_IEEE_INTERFACE
#undef HAVE_SUNOS4_IEEE_INTERFACE
#undef HAVE_SOLARIS_IEEE_INTERFACE
#undef HAVE_HPUX11_IEEE_INTERFACE
#undef HAVE_HPUX_IEEE_INTERFACE
#undef HAVE_TRU64_IEEE_INTERFACE
#undef HAVE_IRIX_IEEE_INTERFACE
#undef HAVE_AIX_IEEE_INTERFACE
#undef HAVE_FREEBSD_IEEE_INTERFACE
#undef HAVE_OS2EMX_IEEE_INTERFACE
#undef HAVE_NETBSD_IEEE_INTERFACE
#undef HAVE_OPENBSD_IEEE_INTERFACE
#undef HAVE_DARWIN_IEEE_INTERFACE
#undef HAVE_DARWIN86_IEEE_INTERFACE

/* Define a rounding function which moves extended precision values
   out of registers and rounds them to double-precision. This should
   be used *sparingly*, in places where it is necessary to keep
   double-precision rounding for critical expressions while running in
   extended precision. For example, the following code should ensure
   exact equality, even when extended precision registers are in use,

      double q = GSL_COERCE_DBL(3.0/7.0) ;
      if (q == GSL_COERCE_DBL(3.0/7.0)) { ... } ;

   It carries a penalty even when the program is running in double
   precision mode unless you compile a separate version of the
   library with HAVE_EXTENDED_PRECISION_REGISTERS turned off. */

#if HAVE_EXTENDED_PRECISION_REGISTERS
#define GSL_COERCE_DBL(x) (gsl_coerce_double(x))
#else
#define GSL_COERCE_DBL(x) (x)
#endif

/* Substitute gsl functions for missing system functions */

#if !HAVE_DECL_HYPOT
#define hypot gsl_hypot
#endif

#if !HAVE_DECL_LOG1P
#define log1p gsl_log1p
#endif

#if !HAVE_DECL_EXPM1
#define expm1 gsl_expm1
#endif

#if !HAVE_DECL_ACOSH
#define acosh gsl_acosh
#endif

#if !HAVE_DECL_ASINH
#define asinh gsl_asinh
#endif

#if !HAVE_DECL_ATANH
#define atanh gsl_atanh
#endif

#if !HAVE_DECL_LDEXP
#define ldexp gsl_ldexp
#endif

#if !HAVE_DECL_FREXP
#define frexp gsl_frexp
#endif

#if !HAVE_DECL_ISINF
#define isinf gsl_isinf
#endif

#if !HAVE_DECL_ISFINITE
#define isfinite gsl_finite
#endif

#if !HAVE_DECL_FINITE
#define finite gsl_finite
#endif

#if !HAVE_DECL_ISNAN
#define isnan gsl_isnan
#endif

#ifdef __GNUC__
#define DISCARD_POINTER(p) do { ; } while(p ? 0 : 0);
#else
#define DISCARD_POINTER(p) /* ignoring discarded pointer */
#endif

#if defined(GSL_RANGE_CHECK_OFF) || !defined(GSL_RANGE_CHECK)
#define GSL_RANGE_CHECK 0  /* turn off range checking by default internally */
#endif

#define RETURN_IF_NULL(x) if (!x) { return ; }
#endif  // CONFIG_H_
"""

genrule(
    name = "gsl_gen_config",
    outs = ["config.h"],
    cmd_ps = ("@'\n%s\n'@ | Out-File $(OUTS)" % CONFIG_H_MSVC),
    cmd = ("echo '%s' > $(OUTS)" % CONFIG_H_MSVC),
    visibility = ["//visibility:private"],
)

cc_library(
    name = "config",
    visibility = ["//visibility:public"],
    hdrs = [":gsl_gen_config"],
)

generate_gsl(
    libs = [
        make_struct(
            name = "sys",
            noinst_HEADERS = "",
            pkginclude_HEADERS = "gsl_sys.h",
            la_SOURCES = "minmax.c prec.c hypot.c log1p.c expm1.c coerce.c invhyp.c pow_int.c infnan.c fdiv.c fcmp.c ldfrexp.c",
        ),
        make_struct(
            name = "", # -> gsl
            noinst_HEADERS = "templates_on.h templates_off.h build.h",
            pkginclude_HEADERS = "gsl_math.h gsl_pow_int.h gsl_nan.h gsl_machine.h gsl_mode.h gsl_precision.h gsl_types.h gsl_version.h gsl_minmax.h gsl_inline.h",
            la_SOURCES = "version.c",
        ),
        make_struct(
            name = "blas",
            noinst_HEADERS = "",
            pkginclude_HEADERS = "gsl_blas.h gsl_blas_types.h",
            la_SOURCES = "blas.c",
        ),
        make_struct(
            name = "cblas",
            noinst_HEADERS = "tests.c tests.h error_cblas.h error_cblas_l2.h error_cblas_l3.h cblas.h source_asum_c.h source_asum_r.h source_axpy_c.h source_axpy_r.h source_copy_c.h source_copy_r.h source_dot_c.h source_dot_r.h source_gbmv_c.h source_gbmv_r.h source_gemm_c.h source_gemm_r.h source_gemv_c.h source_gemv_r.h source_ger.h source_gerc.h source_geru.h source_hbmv.h source_hemm.h source_hemv.h source_her.h source_her2.h source_her2k.h source_herk.h source_hpmv.h source_hpr.h source_hpr2.h source_iamax_c.h source_iamax_r.h source_nrm2_c.h source_nrm2_r.h source_rot.h source_rotg.h source_rotm.h source_rotmg.h source_sbmv.h source_scal_c.h source_scal_c_s.h source_scal_r.h source_spmv.h source_spr.h source_spr2.h source_swap_c.h source_swap_r.h source_symm_c.h source_symm_r.h source_symv.h source_syr.h source_syr2.h source_syr2k_c.h source_syr2k_r.h source_syrk_c.h source_syrk_r.h source_tbmv_c.h source_tbmv_r.h source_tbsv_c.h source_tbsv_r.h source_tpmv_c.h source_tpmv_r.h source_tpsv_c.h source_tpsv_r.h source_trmm_c.h source_trmm_r.h source_trmv_c.h source_trmv_r.h source_trsm_c.h source_trsm_r.h source_trsv_c.h source_trsv_r.h hypot.c",
            pkginclude_HEADERS = "gsl_cblas.h",
            la_SOURCES = "sasum.c saxpy.c scasum.c scnrm2.c scopy.c sdot.c sdsdot.c sgbmv.c sgemm.c sgemv.c sger.c snrm2.c srot.c srotg.c srotm.c srotmg.c ssbmv.c sscal.c sspmv.c sspr.c sspr2.c sswap.c ssymm.c ssymv.c ssyr.c ssyr2.c ssyr2k.c ssyrk.c stbmv.c stbsv.c stpmv.c stpsv.c strmm.c strmv.c strsm.c strsv.c dasum.c daxpy.c dcopy.c ddot.c dgbmv.c dgemm.c dgemv.c dger.c dnrm2.c drot.c drotg.c drotm.c drotmg.c dsbmv.c dscal.c dsdot.c dspmv.c dspr.c dspr2.c dswap.c dsymm.c dsymv.c dsyr.c dsyr2.c dsyr2k.c dsyrk.c dtbmv.c dtbsv.c dtpmv.c dtpsv.c dtrmm.c dtrmv.c dtrsm.c dtrsv.c dzasum.c dznrm2.c caxpy.c ccopy.c cdotc_sub.c cdotu_sub.c cgbmv.c cgemm.c cgemv.c cgerc.c cgeru.c chbmv.c chemm.c chemv.c cher.c cher2.c cher2k.c cherk.c chpmv.c chpr.c chpr2.c cscal.c csscal.c cswap.c csymm.c csyr2k.c csyrk.c ctbmv.c ctbsv.c ctpmv.c ctpsv.c ctrmm.c ctrmv.c ctrsm.c ctrsv.c zaxpy.c zcopy.c zdotc_sub.c zdotu_sub.c zdscal.c zgbmv.c zgemm.c zgemv.c zgerc.c zgeru.c zhbmv.c zhemm.c zhemv.c zher.c zher2.c zher2k.c zherk.c zhpmv.c zhpr.c zhpr2.c zscal.c zswap.c zsymm.c zsyr2k.c zsyrk.c ztbmv.c ztbsv.c ztpmv.c ztpsv.c ztrmm.c ztrmv.c ztrsm.c ztrsv.c icamax.c idamax.c isamax.c izamax.c xerbla.c",  
        ),
        make_struct(
            name = "block",
            noinst_HEADERS = "block_source.c init_source.c fprintf_source.c fwrite_source.c test_complex_source.c test_source.c test_io.c test_complex_io.c",
            pkginclude_HEADERS = "gsl_block.h gsl_block_char.h gsl_block_complex_double.h gsl_block_complex_float.h gsl_block_complex_long_double.h gsl_block_double.h gsl_block_float.h gsl_block_int.h gsl_block_long.h gsl_block_long_double.h gsl_block_short.h gsl_block_uchar.h gsl_block_uint.h gsl_block_ulong.h gsl_block_ushort.h gsl_check_range.h",
            la_SOURCES = "init.c file.c block.c"
        ),
        make_struct(
            name = "matrix",
            noinst_HEADERS = "init_source.c file_source.c rowcol_source.c swap_source.c copy_source.c test_complex_source.c test_source.c minmax_source.c prop_source.c oper_source.c getset_source.c view_source.c submatrix_source.c oper_complex_source.c",
            pkginclude_HEADERS = "gsl_matrix.h gsl_matrix_char.h gsl_matrix_complex_double.h gsl_matrix_complex_float.h gsl_matrix_complex_long_double.h gsl_matrix_double.h gsl_matrix_float.h gsl_matrix_int.h gsl_matrix_long.h gsl_matrix_long_double.h gsl_matrix_short.h gsl_matrix_uchar.h gsl_matrix_uint.h gsl_matrix_ulong.h gsl_matrix_ushort.h",
            la_SOURCES = "init.c matrix.c file.c rowcol.c swap.c copy.c minmax.c prop.c oper.c getset.c view.c submatrix.c view.h",
        ),
        make_struct(
            name = "linalg",
            noinst_HEADERS = "apply_givens.c cholesky_common.c recurse.h svdstep.c tridiag.h test_cholesky.c test_choleskyc.c test_cod.c test_common.c test_ldlt.c test_lu.c test_luc.c test_lq.c test_qr.c test_tri.c",
            pkginclude_HEADERS = "gsl_linalg.h",
            la_SOURCES = "cod.c condest.c invtri.c invtri_complex.c multiply.c exponential.c tridiag.c tridiag.h lu.c luc.c hh.c qr.c qrpt.c qr_tr.c rqr.c lq.c ptlq.c svd.c householder.c householdercomplex.c hessenberg.c hesstri.c cholesky.c choleskyc.c mcholesky.c pcholesky.c cholesky_band.c ldlt.c ldlt_band.c symmtd.c hermtd.c bidiag.c balance.c balancemat.c inline.c trimult.c trimult_complex.c",
        ),
        make_struct(
            name = "statistics",
            noinst_HEADERS = "mean_source.c variance_source.c covariance_source.c absdev_source.c skew_source.c kurtosis_source.c lag1_source.c p_variance_source.c minmax_source.c ttest_source.c mad_source.c median_source.c quantiles_source.c select_source.c Sn_source.c Qn_source.c gastwirth_source.c trmean_source.c wmean_source.c wvariance_source.c wabsdev_source.c wskew_source.c wkurtosis_source.c test_float_source.c test_int_source.c",
            pkginclude_HEADERS = "gsl_statistics.h gsl_statistics_char.h gsl_statistics_double.h gsl_statistics_float.h gsl_statistics_int.h gsl_statistics_long.h gsl_statistics_long_double.h gsl_statistics_short.h gsl_statistics_uchar.h gsl_statistics_uint.h gsl_statistics_ulong.h gsl_statistics_ushort.h",
            la_SOURCES = "mean.c variance.c absdev.c skew.c kurtosis.c lag1.c p_variance.c minmax.c ttest.c mad.c median.c covariance.c quantiles.c select.c Sn.c Qn.c gastwirth.c trmean.c wmean.c wvariance.c wabsdev.c wskew.c wkurtosis.c",
        ),
        make_struct(
            name = "permutation",
            noinst_HEADERS = "permute_source.c",
            pkginclude_HEADERS = "gsl_permutation.h gsl_permute.h gsl_permute_char.h gsl_permute_complex_double.h gsl_permute_complex_float.h gsl_permute_complex_long_double.h gsl_permute_double.h gsl_permute_float.h gsl_permute_int.h gsl_permute_long.h gsl_permute_long_double.h gsl_permute_short.h gsl_permute_uchar.h gsl_permute_uint.h gsl_permute_ulong.h gsl_permute_ushort.h gsl_permute_vector.h gsl_permute_vector_char.h gsl_permute_vector_complex_double.h gsl_permute_vector_complex_float.h gsl_permute_vector_complex_long_double.h gsl_permute_vector_double.h gsl_permute_vector_float.h gsl_permute_vector_int.h gsl_permute_vector_long.h gsl_permute_vector_long_double.h gsl_permute_vector_short.h gsl_permute_vector_uchar.h gsl_permute_vector_uint.h gsl_permute_vector_ulong.h gsl_permute_vector_ushort.h gsl_permute_matrix_char.h gsl_permute_matrix_complex_long_double.h gsl_permute_matrix.h gsl_permute_matrix_long.h gsl_permute_matrix_uint.h gsl_permute_matrix_complex_double.h gsl_permute_matrix_double.h gsl_permute_matrix_int.h gsl_permute_matrix_short.h gsl_permute_matrix_ulong.h gsl_permute_matrix_complex_float.h gsl_permute_matrix_float.h gsl_permute_matrix_long_double.h gsl_permute_matrix_uchar.h gsl_permute_matrix_ushort.h",
            la_SOURCES = "init.c file.c permutation.c permute.c canonical.c inline.c",
        ),
        make_struct(
            name = "complex",
            noinst_HEADERS = "",
            pkginclude_HEADERS = "gsl_complex.h gsl_complex_math.h",
            la_SOURCES = "math.c inline.c",
        ),
        make_struct(
            name = "vector",
            noinst_HEADERS = "init_source.c file_source.c copy_source.c swap_source.c prop_source.c test_complex_source.c test_source.c minmax_source.c oper_source.c oper_complex_source.c reim_source.c subvector_source.c view_source.c",
            pkginclude_HEADERS = "gsl_vector.h gsl_vector_char.h gsl_vector_complex.h gsl_vector_complex_double.h gsl_vector_complex_float.h gsl_vector_complex_long_double.h gsl_vector_double.h gsl_vector_float.h gsl_vector_int.h gsl_vector_long.h gsl_vector_long_double.h gsl_vector_short.h gsl_vector_uchar.h gsl_vector_uint.h gsl_vector_ulong.h gsl_vector_ushort.h",
            la_SOURCES = "init.c file.c vector.c copy.c swap.c prop.c minmax.c oper.c reim.c subvector.c view.c view.h",
        ),
        make_struct(
            name = "err",
            noinst_HEADERS = "",
            pkginclude_HEADERS = "gsl_errno.h gsl_message.h",
            la_SOURCES = "error.c stream.c message.c strerror.c",
        ),
        make_struct(
            name = "sort",
            noinst_HEADERS = "sortvec_source.c sortvecind_source.c subset_source.c subsetind_source.c test_source.c test_heapsort.c",
            pkginclude_HEADERS = "gsl_heapsort.h gsl_sort.h gsl_sort_char.h gsl_sort_double.h gsl_sort_float.h gsl_sort_int.h gsl_sort_long.h gsl_sort_long_double.h gsl_sort_short.h gsl_sort_uchar.h gsl_sort_uint.h gsl_sort_ulong.h gsl_sort_ushort.h gsl_sort_vector.h gsl_sort_vector_char.h gsl_sort_vector_double.h gsl_sort_vector_float.h gsl_sort_vector_int.h gsl_sort_vector_long.h gsl_sort_vector_long_double.h gsl_sort_vector_short.h gsl_sort_vector_uchar.h gsl_sort_vector_uint.h gsl_sort_vector_ulong.h gsl_sort_vector_ushort.h",
            la_SOURCES = "sort.c sortind.c sortvec.c sortvecind.c subset.c subsetind.c",
        ),
        make_struct(
            name = "min",
            noinst_HEADERS = "min.h",
            pkginclude_HEADERS = "gsl_min.h",
            la_SOURCES = "fsolver.c golden.c brent.c convergence.c bracketing.c quad_golden.c",
        ),
        make_struct(
            name = "multifit",
            noinst_HEADERS = "linear_common.c lmutil.c lmpar.c lmset.c lmiterate.c lmmisc.c qrsolv.c test_bard.c test_beale.c test_biggs.c test_box.c test_boxbod.c test_brown1.c test_brown2.c test_brown3.c test_eckerle.c test_enso.c test_estimator.c test_exp1.c test_filip.c test_gaussian.c test_hahn1.c test_helical.c test_jennrich.c test_kirby2.c test_kowalik.c test_lin1.c test_lin2.c test_lin3.c test_linear.c test_longley.c test_meyer.c test_meyerscal.c test_nelson.c test_nonlinear.c test_osborne.c test_penalty1.c test_penalty2.c test_pontius.c test_powell1.c test_powell2.c test_powell3.c test_rat42.c test_rat43.c test_reg.c test_rosenbrock.c test_rosenbrocke.c test_roth.c test_shaw.c test_thurber.c test_vardim.c test_watson.c test_wnlin.c test_wood.c",
            pkginclude_HEADERS = "gsl_multifit.h gsl_multifit_nlin.h",
            la_SOURCES = "gcv.c multilinear.c multiwlinear.c work.c lmniel.c lmder.c fsolver.c fdfsolver.c fdfridge.c fdjac.c convergence.c gradient.c covar.c multirobust.c robust_wfun.c multireg.c",
            src_deps = [
            ]
        ),
    ]
)
