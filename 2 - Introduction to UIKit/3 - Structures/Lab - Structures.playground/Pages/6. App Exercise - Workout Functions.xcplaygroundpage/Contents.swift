/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats(){
        print("DISTANCE: \(distance) KM \nTIME: \(time) M\nELEVATION: \(elevation) M")
    }
}

var runningWorkout = RunningWorkout(distance: 4500, time: 20 , elevation: 450)
print(runningWorkout.postWorkoutStats())

//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var steps: Int = 0
    var goal: Int
    
   mutating func takeStep(){
        steps += 1
    }
}

var person1 = Steps(goal: 3600)
for _ in 1...6500{
    person1.takeStep()
}
print(person1.steps)
/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
