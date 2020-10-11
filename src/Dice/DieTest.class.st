Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreationIsOk [
	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : #tests }
DieTest >> testDieRollBetween1and6 [
	| d |
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ] 
]

{ #category : #tests }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6
]
