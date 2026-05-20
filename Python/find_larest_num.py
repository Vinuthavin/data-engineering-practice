def find_largest(arr):
    largest = arr[0]

    for num in arr:
        if num > largest:
            largest = num
    return largest


numbers = [10, 45, 23, 89, 12]
print(find_largest(numbers))

