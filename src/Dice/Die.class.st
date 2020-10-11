"
I represent a sided die. I can represent multiple sides beyond my default of 6. I typically am grouped up in a DieHandle and then rolled to create an aggregate score.

Public API
	- withFaces: takes anInteger and returns a sided die of that integer count
	- roll takes a die and randomly returns an integer between 1 and the number of sides

"
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
