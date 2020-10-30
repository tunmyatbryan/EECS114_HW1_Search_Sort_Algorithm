/**

Name - Tun Myat
Student ID - 51705354

 *  \file mergesort.cc
 *
 *  \brief Implement your mergesort in this file.
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "sort.hh"

//Merge function will compare and sort the elements. 
//Then, merge two arrays into one final sorted array.
void Merge(keytype* A, keytype* leftArr, int leftSize, keytype* rightArr, int rightSize)
{
	//i is for leftArr, j is for rightArr, 
	//k is for A array. A is final sorted array
	int i = 0, j = 0, k = 0;

	//comparing elements from leftArr and rightArr to be sorted
	//sorted elements will go into A array
	while(i < leftSize && j < rightSize)
	{
		if(leftArr[i] < rightArr[j])
		{
			A[k] = leftArr[i];
			k++;
			i++;
		}
		else
		{
			A[k] = rightArr[j];
			k++;
			j++;
		}
	}

	//after all elements are compared and sorted
	//There may be some remaining elements left.
	//The remaining elements will be added to A array
	while(i < leftSize)
	{
		A[k] = leftArr[i];
		k++;
		i++;
	}

	while(j < rightSize)
	{
		A[k] = rightArr[j];
		k++;
		j++;
	}
}

void mySort (int N, keytype* A)
{
	int mid, i, j;

	//if the array has one or less element, it doesn't need to sort.
	if(N <= 1)
	{
		return;
	}

	//find the mid point to seprate the array
	mid = N/2;

	//create two temporary arrays. Left and right
	keytype *leftArray;
	keytype *rightArr;	

	//leftArray starts from 0 to (mid-1) point. leftSize = mid.
	//rightArray starts from mid point to (N-1). rightSize = (N-mid)
	leftArray = (keytype *) malloc(sizeof(keytype) * mid); 
	rightArr = (keytype *) malloc(sizeof(keytype) * (N- mid));
	
	//copy first half elements into leftArray
	for(i = 0; i < mid; i++)
	{
		leftArray[i] = A[i];
	}

	//copy the second half elements into rightArray
	for(j = mid; j < N; j++)
	{
		rightArr[j-mid] = A[j];
	}

	//devided the arrays again and again until they reach to single elements
	mySort(mid, leftArray);
	mySort(N-mid, rightArr);

	//finally merge those arrays into original A sorted array.
	Merge(A, leftArray, mid, rightArr, N-mid);

	//free the malloc memory
        free(leftArray);
        free(rightArr);
}

/* eof */
