public struct Counter {
	private static var staticValue = Int.zero
	public static var next: Int {
		Counter.staticValue += 1
		return Counter.staticValue
	}
	
	private var instanceValue = Int.zero
	
	public mutating func next() -> Int {
		instanceValue += 1
		return instanceValue
	}
}
