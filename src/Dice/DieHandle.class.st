Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'diceList'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle class >> withDiceList: aCollection [ 
	| d |
	d := DieHandle new.
	d diceList: aCollection.
	^ d
]

{ #category : #adding }
DieHandle >> + aDieHandle [
	| c |
	c := diceList , (aDieHandle diceList).
	^ DieHandle withDiceList: c
	
]

{ #category : #accessing }
DieHandle >> addDie: aDie [ 
	diceList add: aDie
]

{ #category : #accessing }
DieHandle >> diceList [
	^ diceList
]

{ #category : #accessing }
DieHandle >> diceList: aCollection [ 
	diceList := aCollection
]

{ #category : #accessing }
DieHandle >> diceNumber [
	^ diceList size 
]

{ #category : #initialization }
DieHandle >> initialize [
	diceList := OrderedCollection new
]

{ #category : #rolling }
DieHandle >> roll [
	^ diceList inject: 0 into: [ :acc :each | acc + (each roll) ] 
]
