"
I represent a handle (or cup) of multiple die. I can then be added together to get a larger die handle or rolled to roll all the dice I contain. I can also use dice of multiple sides at the same time.

Public API
	- addDie: addes a new x sided die
	- diceNumber tells how many dice are in the handle
	- roll roles all the dice in the handle and produces an aggregate score
	- + extends integer and produces a new die handle that contains the dice from each of the smaller handles  
"
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
