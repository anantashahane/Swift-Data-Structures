import Foundation

func SumOfFactors(of Numbers : Int) -> CLong {
	var sum = 0
	for i in 0..<Numbers {
		if (i % 3 == 0 || i % 5 == 0) {sum += i}
	}
	return sum
}

let start = DispatchTime.now()
print(SumOfFactors(of: 1_000_000))
let end = DispatchTime.now()
print("Time taken = \(Double(end.uptimeNanoseconds - start.uptimeNanoseconds)/1_000_000_000)s")
