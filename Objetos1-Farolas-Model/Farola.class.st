Class {
	#name : #Farola,
	#superclass : #Object,
	#instVars : [
		'state',
		'neighbor'
	],
	#category : #'Objetos1-Farolas-Model'
}

{ #category : #initialization }
Farola >> initialize [ 

	state := false.
	neighbor  := Set new.
]

{ #category : #initialization }
Farola >> isOn [ 
	
	^state.
]

{ #category : #initialization }
Farola >> neighbors [

	^neighbor .
]

{ #category : #initialization }
Farola >> off [

	state:= false.
]

{ #category : #initialization }
Farola >> on [ 

	state := true.
]

{ #category : #'as yet unclassified' }
Farola >> pair: unaFarola [

	neighbor add: unaFarola.
]

{ #category : #initialization }
Farola >> pairWithNeighbor: otraFarola [

		self pair:otraFarola.
		otraFarola pair: self.
	
]

{ #category : #initialization }
Farola >> turnOff [

	"self off.
	neighbor do:[:each|(each isOn) ifTrue: each turnOff]."
	
	self isOn ifTrue: [ self off. neighbor  do: [ :each|each turnOff  ] ].
]

{ #category : #initialization }
Farola >> turnOn [ 

	"self on.
	neighbor do:[:each| (each isOn) ifFalse: each on]."
	
		self isOn ifFalse:[ self on. neighbor  do:[:each | each turnOn ]].
]
