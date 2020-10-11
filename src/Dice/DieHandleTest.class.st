Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testCreationAdding [
	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 20);
		yourself.
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testRollingTwoDie [
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	handle addDie: (Die withFaces: 10).
	30 timesRepeat: [ self assert: (handle roll between: 1 and: 16) ]
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [
	self assert: 2 D20 diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle4 [
	self assert: 2 D4 diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testSumOfHandles [
	| hd1 hd2 hd3 |
	hd1 := DieHandle new
		addDie: (Die withFaces: 20);
		addDie: (Die withFaces: 20); yourself.
	hd2 := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 6); yourself.
	hd3 := hd1 + hd2.
	self assert: hd3 diceNumber equals: 4.
		
]
