Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
DieTest class >> withFaces: aNumber [

| instance|
instance := self new.
instance face: aNumber .
    ^ instance 
]

{ #category : 'tests' }
DieTest >> testCreationIsOk [
self assert: (Die new faces: 20) faces equals: 20
]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testRolling [
| d |
d := Die new.
10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]

{ #category : 'tests' }
DieTest >> testWithFaces [
  | d |
d := Die withFaces: 10.
self assert: d faces equals: 10
]
