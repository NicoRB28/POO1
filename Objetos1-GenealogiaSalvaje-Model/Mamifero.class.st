Class {
	#name : #Mamifero,
	#superclass : #Object,
	#instVars : [
		'identificador',
		'especie',
		'fechaDeNacimiento',
		'padre',
		'madre'
	],
	#category : #'Objetos1-GenealogiaSalvaje-Model'
}

{ #category : #accessing }
Mamifero >> abuelaMaterna [

	^madre madre.
]

{ #category : #accessing }
Mamifero >> abuelaPaterna [

	^padre madre.
]

{ #category : #accessing }
Mamifero >> abueloMaterno [

	^madre padre.
]

{ #category : #accessing }
Mamifero >> abueloPaterno [

	^padre padre.
]

{ #category : #accessing }
Mamifero >> especie [

	^especie.
]

{ #category : #accessing }
Mamifero >> especie: unaEspecie [

	especie := unaEspecie.
]

{ #category : #accessing }
Mamifero >> fechaDeNacimiento [

	^fechaDeNacimiento.
]

{ #category : #accessing }
Mamifero >> fechaDeNacimiento: unaFecha [

	fechaDeNacimiento := unaFecha.
]

{ #category : #accessing }
Mamifero >> identificador [
	"comment stating purpose of message"

	^identificador.
]

{ #category : #accessing }
Mamifero >> identificador: unIdentificador [
	"comment stating purpose of message"

	identificador := unIdentificador .
]

{ #category : #accessing }
Mamifero >> madre [

	^madre.
]

{ #category : #accessing }
Mamifero >> madre: unaMadre [

	madre := unaMadre.
]

{ #category : #'as yet unclassified' }
Mamifero >> madreEsOTiene: unAncestro [

	madre ifNil: [ ^false ].
		^madre == unAncestro ifTrue: [ true ] ifFalse:[madre tieneAncestro: unAncestro].
	
		
]

{ #category : #accessing }
Mamifero >> padre [

	^padre.
]

{ #category : #accessing }
Mamifero >> padre: unPadre [

	padre := unPadre.
]

{ #category : #'as yet unclassified' }
Mamifero >> padreEsOTiene: unAncestro [

	padre ifNil: [ ^false ].
		^padre == unAncestro ifTrue: [ true ] ifFalse:[padre tieneAncestro: unAncestro ].
		
]

{ #category : #'as yet unclassified' }
Mamifero >> tieneAncestro: unAncestro [

	^(self padreEsOTiene:  unAncestro) | (self madreEsOTiene:unAncestro ).
]
