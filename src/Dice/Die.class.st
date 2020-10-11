Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #initialization }
Die class >> withFaces: anInteger [ 
	^ self new faces: anInteger; yourself
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: '(';
		print: faces;
		nextPutAll: ')'
]

{ #category : #behavior }
Die >> roll [
	^ faces atRandom
]
