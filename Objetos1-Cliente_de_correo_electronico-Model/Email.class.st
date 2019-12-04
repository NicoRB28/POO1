Class {
	#name : #Email,
	#superclass : #Object,
	#instVars : [
		'titulo',
		'cuerpo',
		'adjuntos'
	],
	#category : #'Objetos1-Cliente_de_correo_electronico-Model'
}

{ #category : #'as yet unclassified' }
Email class >> conTitulo: unTitulo yCuerpo:unCuerpo [

^(self new) titulo: unTitulo cuerpo: unCuerpo.
]

{ #category : #accessing }
Email >> adjuntar: unArchivo [

	adjuntos add: unArchivo.
]

{ #category : #accessing }
Email >> adjuntos [

^adjuntos.
]

{ #category : #'as yet unclassified' }
Email >> buscarStringEnCuerpo:unString [

 ^(unString match: cuerpo).	
]

{ #category : #'as yet unclassified' }
Email >> buscarStringEnMail:unString [

	(self buscarStringEnTitulo: unString)
	ifFalse:[ (self buscarStringEnCuerpo: unString)ifFalse: [ ^false ]].
	^true.
]

{ #category : #'as yet unclassified' }
Email >> buscarStringEnTitulo:unString [

 ^(unString match: titulo).	
]

{ #category : #accessing }
Email >> cuerpo [ 

^cuerpo.
]

{ #category : #initialization }
Email >> initialize [ 

adjuntos := OrderedCollection new.
]

{ #category : #accessing }
Email >> titulo [ 

^titulo.
]

{ #category : #'as yet unclassified' }
Email >> titulo: unTitulo cuerpo: unCuerpo [

titulo:= unTitulo.
cuerpo:=unCuerpo.

]
