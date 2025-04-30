"
I created die 
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces',
		'sides'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [

	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]

{ #category : 'accessing' }
Die >> faces [
^ faces
]

{ #category : 'accessing' }
Die >> faces: aNumber [
faces := aNumber
]

{ #category : 'initialization' }
Die >> initialize [
    "Set the default number of faces for this die to 6."
    faces := 6.

]

{ #category : 'as yet unclassified' }
Die >> roll [
    ^  6 atRandom.

]

{ #category : 'as yet unclassified' }
Die >> withFaces: anInteger [
^ Die new faces: anInteger ; yourself
]
