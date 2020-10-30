/**

Name - Tun Myat
Student ID - 51705354

 *  \file insertion-sort.cc
 *
 *  \brief Implement your insertion sort in this file.
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "sort.hh"

//Binary Search will find the position to be inserted the value
int BinarySearch(keytype* arr, int value, int low, int high)
{
	int mid = 0;
	if (high <= low)
	{
  		if (value > arr[low])
		  {
  			return low+1;
		  }
		  else
		  {
		  	return low;
		  }
	  }

	mid = (low + high)/2;
  
	if(value == arr[mid])
	{
		return mid+1;
	}
	else if(value > arr[mid])
	{
		//new low = mid+1 and high is the same
		return BinarySearch(arr, value, mid+1, high); 
	}
	else
	{
		//new high = mid-1 and low is the same
		return BinarySearch(arr, value, low, mid-1);
	}
}

void mySort (int N, keytype* A)
{
  /* Lucky you, you get to start from scratch */
	int position, value;
	int j;

	for(int i = 1; i < N; i++)
	{
		//assign the second element to compare with first
		value = A[i];
		j = i-1;
		
		//find the position to insert the value
		position = BinarySearch(A, value, 0, j);

		//after the position is found, move all emements one space back
		for(j; j >= position; j--)
		{
			A[j+1] = A[j];
		}		
		
		//insert the value into the created space
		A[j+1] = value;
	}
}

/* eof */
