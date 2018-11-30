def add(*num)
	sum = 0
	for n in num
		sum += n
	end
	sum
end

def subtract(first, *nums)
	sum = first
	for n in nums
		sum -= n
	end
	sum
end

def sum(array)
	sum = 0
	if array.length == 0
		sum
	else
		for n in array
			sum += n
		end	
	end
	sum
end

def multiply(*nums)
	total = 1
	for n in nums
		total *= n	
	end
	total
end

def power(num1, num2)
	num1 ** num2	
end

def factorial(num)
	total = 1
	if num < 0
		return 'Please enter a number 0 or greater'
	end
	if num == 0
		1
	else
		for n in 1..num	
			total *= n	
		end
	end
	total
end
