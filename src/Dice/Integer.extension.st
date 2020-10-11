Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D20 [
	| h |
	h := DieHandle new.
	self timesRepeat: [ h addDie: (Die withFaces: 20) ].
	^ h
]
