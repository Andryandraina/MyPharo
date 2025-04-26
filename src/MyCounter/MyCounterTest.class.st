Class {
	#name : 'MyCounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'as yet unclassified' }
MyCounterTest >> TestIncrement [ 
| c |
c := MyCounterTest new.
c increment.
self assert: c count equals: 1
]
