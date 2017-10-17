cmake_minimum_required(VERSION 3.7)
project(leetcode)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp number_of_1_bits.cpp RangBItWiseAnd.cpp MissingNumber.cpp FindErrorNum.cpp totalHammingDistance.cpp HammingDistance.cpp MinMoves2.cpp GetSum.cpp ReadBInaryWatch.cpp FindTheDifference.cpp 3Sum.cpp 4Sum.cpp RemoveDuplicates.cpp RemoveElement.cpp FirstMissingPositive.cpp NextPermutation.cpp RotateImage.cpp SpiralMatrix.cpp SpiralMatrixII.cpp PlusOne.cpp SetMatrixZeroes.cpp RemoveDuplicatesfromSortedArrayII.cpp MajorityElement.cpp RotateArray.cpp BestTimetoBuyandSellStock.cpp PascalTriangle.cpp PascalTriangleII.cpp KthLargestElementInArray.cpp SummaryRanges.cpp MajorityElementII.cpp ProductofArrayExceptSelf.cpp "Searcha2DMatrix II.cpp" IncreasingTripletSubsequence.cpp ShuffleanArray.cpp FizzBuzz.cpp ThirdMaximumNumber.cpp FindAllDuplicatesinanArray.cpp "Climbing Stairs/FindAllNumbersDisappearedinanArray.cpp" MaximumAverageSubarrayI.cpp BeautifulArrangementII.cpp Non-decreasingArray.cpp)
add_executable(untitled ${SOURCE_FILES})