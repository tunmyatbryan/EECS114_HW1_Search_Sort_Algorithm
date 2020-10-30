Script started on Wed 23 Jan 2019 05:57:30 PM PST
]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ make insertion-sort.cc [K[K[K
g++  -O3 -g -o driver.o -c driver.cc
g++  -O3 -g -o sort.o -c sort.cc
g++  -O3 -g -o insertion-sort.o -c insertion-sort.cc
g++ -O3 -g -o insertion-sort driver.o sort.o insertion-sort.o
]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ i[K..[K/insertion-sort 10
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 10

Quicksort: 3e-06 seconds ==> 3.33333 million keys per second
	(Array is sorted.)
My sort: 0 seconds ==> inf million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./insertion-sort 100
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 100

Quicksort: 9e-06 seconds ==> 11.1111 million keys per second
	(Array is sorted.)
My sort: 5e-06 seconds ==> 20 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./insertion-sort 1000
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 1000

Quicksort: 0.000186 seconds ==> 5.37634 million keys per second
	(Array is sorted.)
My sort: 0.000151 seconds ==> 6.62252 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./insertion-sort 10000
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 10000

Quicksort: 0.001243 seconds ==> 8.04505 million keys per second
	(Array is sorted.)
My sort: 0.011187 seconds ==> 0.893895 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ make mergesort.cc [K[K[K
g++  -O3 -g -o mergesort.o -c mergesort.cc
g++ -O3 -g -o mergesort driver.o sort.o mergesort.o
]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./mergesort 10
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 10

Quicksort: 3e-06 seconds ==> 3.33333 million keys per second
	(Array is sorted.)
My sort: 3e-06 seconds ==> 3.33333 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./mergesort 100
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 100

Quicksort: 9e-06 seconds ==> 11.1111 million keys per second
	(Array is sorted.)
My sort: 1.6e-05 seconds ==> 6.25 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./mergesort 1000
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 1000

Quicksort: 0.000193 seconds ==> 5.18135 million keys per second
	(Array is sorted.)
My sort: 0.000128 seconds ==> 7.8125 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ ./mergesort 10000
Timer: gettimeofday
Timer resolution: ~ 1 us (?)

N == 10000

Quicksort: 0.001095 seconds ==> 9.13242 million keys per second
	(Array is sorted.)
My sort: 0.001502 seconds ==> 6.65779 million keys per second
	(Array is sorted.)
	(Arrays are equal.)

]0;tmyat@bondi:hw1[tmyat@bondi hw1]$ exit
exit

Script done on Wed 23 Jan 2019 05:58:25 PM PST
