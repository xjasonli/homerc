" Vim syntax file
" Language:	C++
" Maintainer:	Jason Li <xjason.li@gmail.com>
" Last Change:	2009 Jun 26

" C standard
" cassert
syn match	cppStdFunction	"\<assert\s*("me=e-1
" cctype
syn match	cppStdFunction	"\<is\(alnum\|alpha\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|xdigit\)\s*("me=e-1
syn match	cppStdFunction	"\<to\(lower\|upper\)\s*("me=e-1
" cerrno
syn match	cppStdFunction	"\<errno\s*("me=e-1
" cfloat
" climits
" clocale
syn match	cppStdFunction	"\<setlocale\s*("me=e-1
syn match	cppStdFunction	"\<localeconv\s*("me=e-1
syn keyword	cppStdType		lconv
" cmath
"" Trigomometric functions
syn match	cppStdFunction	"\<a\?\(cos\|sin\|tan\)\s*("me=e-1
syn match	cppStdFunction	"\<atan2\s*("me=e-1
"" Hyperbolic function
syn match	cppStdFunction	"\<\(cos\|sin\|tan\)h\s*("me=e-1
"" Exponential and logarithmic functions
syn match	cppStdFunction	"\<\(\|fr\|ld\)exp\s*("me=e-1
syn match	cppStdFunction	"\<log\(10\)\?\s*("me=e-1
syn match	cppStdFunction	"\<modf\s*("me=e-1
"" Power functions
syn match	cppStdFunction	"\<\(pow\|sqrt\)\s*("me=e-1
"" Rounding, absolute value and remainder functions
syn match	cppStdFunction	"\<\(ceil\|fabs\|floor\|fmod\)\s*("me=e-1
" csetjmp
syn match	cppStdFunction	"\<\(long\|set\)jmp\s*("me=e-1
syn match	cppStdFunction	"\<jmp_buf\s*("me=e-1
" csignal
syn match	cppStdFunction	"\<\(signal\|raise\)\s*("me=e-1
syn keyword	cppStdType		sig_atomic_t
" cstdarg
syn keyword	cppStdType		va_list
syn match	cppStdMacro		"\<va_\(start\|arg\|end\)\s*("me=e-1
" cstddef
syn keyword	cppStdType		ptrdiff_t size_t
syn match	cppStdMacro		"\<offsetof\s*("me=e-1
syn keyword	cppStdMacro		NULL
" cstdio
"" Operations on files
syn match	cppStdFunction	"\<\(remove\|rename\|tmpnam\|tmpfile\)\s*("me=e-1
"" File access
syn match	cppStdFunction	"\<f\(open\|close\|flush\|reopen\)\s*("me=e-1
syn match	cppStdFunction	"\<setv\?buf\s*("me=e-1
"" Formatted input/output
syn match	cppStdFunction	"\<v\?\(f\|s\|\)printf\s*("me=e-1
syn match	cppStdFunction	"\<\(f\|s\|\)scanf\s*("me=e-1
"" Character input/output
syn match	cppStdFunction	"\<f\?\(get\|put\)\(c\|s\)\s*("me=e-1
syn match	cppStdFunction	"\<\(get\|put\)char\s*("me=e-1
syn match	cppStdFunction	"\<ungetc\s*("me=e-1
"" Direct input/output
syn match	cppStdFunction	"\<f\(read\|write\)\s*("me=e-1
"" File positioning
syn match	cppStdFunction	"\<f\(get\|set\)pos\s*("me=e-1
syn match	cppStdFunction	"\<f\(seek\|tell\)\s*("me=e-1
syn match	cppStdFunction	"\<rewind\s*("me=e-1
"" Error-handling
syn match	cppStdFunction	"\<clearerr\s*("me=e-1
syn match	cppStdFunction	"\<feof\s*("me=e-1
syn match	cppStdFunction	"\<\(f\|p\)error\s*("me=e-1
"" Macros
syn keyword	cppStdMacro		EOF FILENAME_MAX NULL TMP_MAX
"" Types
syn keyword	cppStdType		FILE fpos_t size_t
" cstdlib
"" String conversion
syn match	cppStdFunction	"\<ato\(f\|i\|l\)\s*("me=e-1
syn match	cppStdFunction	"\<strto\(d\|l\|ul\)\s*("me=e-1
"" Psedo-random sequence generation
syn match	cppStdFunction	"\<s\?rand\s*("me=e-1
"" Dynamic memory management
syn match	cppStdFunction	"\<\(c\|m\|re\)alloc\s*("me=e-1
syn match	cppStdFunction	"\<free\s*("me=e-1
"" Environment
syn match	cppStdFunction	"\<\(abort\|atexit\|exit\|getenv\|system\)\s*("me=e-1
"" Searching and sorting
syn match	cppStdFunction	"\<\(bsearch\|qsort\)\s*("me=e-1
"" Integer arithmethics
syn match	cppStdFunction	"\<l\?\(abs\|div\)\s*("me=e-1
"" Multibyte characters
syn match	cppStdFunction	"\<\(mblen\|mbtowc\|wctomb\)\s*("me=e-1
"" Multibyte strings
syn match	cppStdFunction	"\<\(mbstowcs\|wcstombs\)\s*("me=e-1
"" Macros
syn keyword	cppStdMacro		EXIT_FAILURE EXIT_SUCCESS MB_CUR_MAX NULL RAND_MAX
"" Types
syn keyword	cppStdType		div_t ldiv_t size_t
" cstring
"" Copying
syn match	cppStdFunction	"\<mem\(cpy\|move\)\s*("me=e-1
syn match	cppStdFunction	"\<strn\?cpy\s*("me=e-1
"" Concatenation
syn match	cppStdFunction	"\<strn\?cat\s*("me=e-1
"" Comparison
syn match	cppStdFunction	"\<memcmp\s*("me=e-1
syn match	cppStdFunction	"\<strn\?cmp\s*("me=e-1
syn match	cppStdFunction	"\<str\(coll\|xfrm\)\s*("me=e-1
"" Searching
syn match	cppStdFunction	"\<memchr\s*("me=e-1
syn match	cppStdFunction	"\<str\(chr\|cspn\|pbrk\|spn\|str\|tok\)\s*("me=e-1
"" Other
syn match	cppStdFunction	"\<memset\s*("me=e-1
syn match	cppStdFunction	"\<str\(error\|len\)\s*("me=e-1
"" Macros
syn keyword	cppStdMacro		NULL
"" Types
syn keyword	cppStdType		size_t
" ctime
"" Time manipulation
syn match	cppStdFunction	"\<clock\s*("me=e-1
syn match	cppStdFunction	"\<\(diff\|mk\|\)time\s*("me=e-1
"" Conversion
syn match	cppStdFunction	"\<\(asc\|c\|gm\|local\|strf\)time\s*("me=e-1
"" Macros
syn keyword	cppStdMacro		CLOCKS_PER_SEC NULL
"" Types
syn keyword	cppStdType		clock_t size_t time_t tm


" C++ standard
" std namespace
syn keyword	cppStdNamespace	std tr1

" container
syn match	cppStdContainer	"\<basic_string\s*<"me=e-1
syn keyword	cppStdContainer	string wstring bit_vector
syn match	cppStdContainer	"\<\(vector\|list\|deque\)\s*<"me=e-1
syn match	cppStdContainer	"\<\(multi\)\?\(set\|map\)\s*<"me=e-1
syn match	cppStdContainer	"\<priority_queue\s*<"me=e-1
syn match	cppStdContainer	"\<bitset\s*<"me=e-1
syn match	cppStdContainer	"\<stack\s*<"me=e-1
syn match	cppStdContainer	"\<queue\s*<"me=e-1
syn match	cppStdContainer	"\<hashtable\s*<"me=e-1
syn match	cppStdContainer	"\<hash_\(multi\)\?\(set\|map\)\s*<"me=e-1
syn match	cppStdContainer	"\<slist\s*<"me=e-1
syn match	cppStdContainer	"\<rope\s*<"me=e-1

" iterator
syn keyword	cppStdIterator	iterator iterator_traits
syn match	cppStdIterator	"\<\(input_\|output_\|forward_\|bidirectional_\|random_access_\)iterator\s*<"me=e-1
syn match	cppStdIterator	"\<\(input_\|output_\|forward_\|bidirectional_\|random_access_\)iterator_tag\>"
syn match	cppStdIterator	"\<\(reverse_\|\(back_\|front_\|\)insert_\)iterator\s*<"me=e-1
syn match	cppStdIterator	"\<\(i\|o\)stream_iterator\s*<"me=e-1
syn match	cppStdFunction	"\<\(back_\|front_\|\)inserter\s*\(<\|(\)"me=e-1
syn match	cppStdFunction	"\<\(advance\|distance\)\s*\((\|<\)"me=e-1

" algorithm
" Non-modifying sequence operations
syn match	cppStdAlgorithm	"\<accumulate\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<for_each\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<find\(_if\|_end\|_first_of\)\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<adjacent_\(find\|difference\)\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<count\(_if\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<mismatch\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<equal\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<search\(_n\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<inner_product\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<partial_sum\s*\((\|<\)"me=e-1
" Modifying sequence operations
syn match	cppStdAlgorithm	"\<copy\(_backward\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<swap\(_ranges\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<iter_swap\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<transform\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<replace\(_copy\)\?\(_if\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<fill\(_n\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<generate\(_n\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<remove\(_copy\)\?\(_if\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<unique\(_copy\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<reverse\(_copy\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<rotate\(_copy\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<random_shuffle\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<\(stable_\)\?partition\s*\((\|<\)"me=e-1
" Sorting
syn match	cppStdAlgorithm	"\<\(stable_\)\?sort\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<partial_sort\(_copy\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<nth_element\s*\((\|<\)"me=e-1
" Binary search
syn match	cppStdAlgorithm	"\<\(lower\|upper\)_bound\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<equal_range\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<binary_search\s*\((\|<\)"me=e-1
" Merge
syn match	cppStdAlgorithm	"\<\(inplace_\)\?merge\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<includes\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<set_\(union\|intersection\|\(symmetric_\)\?difference\)\s*\((\|<\)"me=e-1
" Heap
syn match	cppStdAlgorithm	"\<\(push\|pop\|make\|sort\)_heap\s*\((\|<\)"me=e-1
" Min/max
syn match	cppStdAlgorithm	"\<\(min\|max\)\(_element\)\?\s*\((\|<\)"me=e-1
" Other
syn match	cppStdAlgorithm	"\<lexicographical_compare\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<\(next\|prev\)_permutation\s*\((\|<\)"me=e-1
" Non-standard
syn match	cppStdAlgorithm	"\<\(copy_n\|iota\|is_heap\|is_sorted\|power\|random_sample\|random_sample_n\)\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<uninitialized_\(copy\|fill\)\(_n\)\?\s*\((\|<\)"me=e-1
syn match	cppStdAlgorithm	"\<lexicographical_compare_3way\s*\((\|<\)"me=e-1

" functor
syn match	cppStdFunctor	"\<\(unary\|binary\)_function\s*<"me=e-1
syn match	cppStdFunctor	"\<\(unary\|binary\)_compose\s*<"me=e-1
syn match	cppStdFunctor	"\<\(unary\|binary\)_netate\s*<"me=e-1
syn match	cppStdFunctor	"\<\(plus\|minus\|multiplies\|divides\|modules\|negate\)\s*<"me=e-1
syn match	cppStdFunctor	"\<\(not_\)\?equao_to\s*<"me=e-1
syn match	cppStdFunctor	"\<\(greater\|less\)\(_equal\)\?\s*<"me=e-1
syn match	cppStdFunctor	"\<logical_\(and\|or\|not\)\s*<"me=e-1
syn match	cppStdFunctor	"\<select\(1st\|2nd\)\s*<"me=e-1
syn match	cppStdFunctor	"\<project\(1st\|2nd\)\s*<"me=e-1
syn match	cppStdFunctor	"\<binder\(1st\|2nd\)\s*<"me=e-1
syn match	cppStdFunctor	"\<identity\s*<"me=e-1
syn match	cppStdFunctor	"\<\(const_\)\?mem_fun1\?\(_ref\)\?_t\s*<"me=e-1
syn match	cppStdFunctor	"\<pointer_to_\(unary\|binary\)_function\s*<"me=e-1
syn match	cppStdFunction	"\<bind\(1st\|2nd\)\s*\((\|<\)"me=e-1
syn match	cppStdFunction	"\<not\(1\|2\)\s*\((\|<\)"me=e-1
syn match	cppStdFunction	"\<compose\(1\|2\)\s*\((\|<\)"me=e-1
syn match	cppStdFunction	"\<mem_fun1\?\(_ref\)\?\s*\((\|<\)"me=e-1
syn match	cppStdFunction	"\<ptr_fun\s*\((\|<\)"me=e-1

" exception
syn keyword	cppStdException	exception bad_exception
syn keyword	cppStdException	logic_error domain_error invalid_argument length_error out_of_range
syn keyword	cppStdException	runtime_error range_error overflow_error underflow_error

" utility
syn match	cppStdType		"\<pair\s*<"me=e-1
syn match	cppStdFunction	"\<make_pair\s*\((\|<\)"me=e-1

" typeinfo
syn keyword	cppStdType		type_info

" syntex templates
"syn match	cppStd	"\<\s*<"me=e-1
"syn match	cppStd	"\<\s*("me=e-1
"syn match	cppStd	"\<\s*\((\|<\)"me=e-1
"syn match	cppStd	"\<\s*\((\|<\|,\|)\)"me=e-1
"syn match	cppStd	"\<\s*$"
"syn keyword	cppStd	zz

" iostream
syn keyword	cppStdIostream	ios_base
syn keyword	cppStdIostream	ios streambuf istream ostream iostream stringbuf istringstream ostringstream stringstream filebuf ifstream ofstream fstream
syn keyword	cppStdIostream	wios wstreambuf wistream wostream wiostream wstringbuf wistringstream wostringstream wstringstream wfilebuf wifstream wofstream wfstream
syn match	cppStdIostream	"\<basic_\(ios\|streambuf\|\(i\|o\|io\)stream\|stringbuf\|\(i\|o\|\)\(string\|f\)stream\|filebuf\)\s*<"me=e-1
syn match	cppStdIostream	"\<fpos\s*<"me=e-1
syn keyword	cppStdIostream	streamoff streampos streamsize
syn keyword	cppStdIostream	cin cout cerr clog wcin wcout wcerr wclog
syn keyword cppStdFunction	boolalpha noboolalpha showbase noshowbase showpoint noshowpoint showpos noshowpos skipws noskipws uppercase nouppercase unitbuf nounitbuf
syn keyword cppStdFunction	internal left right dec hex oct fixed scientific
syn match	cppStdFunction	"\<\(re\)\?setiosflags\s*("me=e-1
syn match	cppStdFunction	"\<set\(base\|fill\|precision\|w\)\s*("me=e-1


if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppStdNamespace	Structure
  HiLink cppStdContainer	Type
  HiLink cppStdIterator		Type
  HiLink cppStdException	Type
  HiLink cppStdFunctor		Type
  HiLink cppStdType			Type
  HiLink cppStdIostream		Type
  HiLink cppStdAlgorithm	Function
  HiLink cppStdFunction		Function
  HiLink cppStdMacro		Macro
  delcommand HiLink
endif

