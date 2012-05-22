a = undefined

console.log a ||= 9
a = undefined
console.log a ?= 9
a = 0
console.log a ||= 9
a = 0
console.log a ?= 9
