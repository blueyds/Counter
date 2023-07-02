# Counter

Small struct that allows you to use a Counter in any Int field. This Counter couldl satisfy a unique identifiable.

## Use as a static struct

the most common way to use will be as a static. The static will maintain a counter throughout the runtime.
The following will apply the next Int to an id var
** var id: Int = Counter.next

## use as a instance

You can also use it as a initialized instance. The following will create a static counter specific to this struct and then apply that initialized instance counter to the id field. Note the use of a function here. 

** static var counter = Counter()
** var id: Int = counter.next()
