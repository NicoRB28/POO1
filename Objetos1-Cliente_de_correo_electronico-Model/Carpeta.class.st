Class {
	#name : #Carpeta,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'contenido'
	],
	#category : #'Objetos1-Cliente_de_correo_electronico-Model'
}

{ #category : #accessing }
Carpeta class >> nombre: unNombre [

^(self new) nombre:unNombre.
]

{ #category : #'as yet unclassified' }
Carpeta >> agregarArchivo:unEmail [

contenido add: unEmail.
]

{ #category : #'as yet unclassified' }
Carpeta >> buscarEmail:unString [

	^contenido detect: [ :each| each buscarStringEnMail: unString  ].
]

{ #category : #'as yet unclassified' }
Carpeta >> eliminarEmail:unEmail [

contenido remove: unEmail  ifAbsent:[].
]

{ #category : #initialization }
Carpeta >> initialize [ 


contenido:=OrderedCollection new.
]

{ #category : #accessing }
Carpeta >> nombre:unNombre [

nombre:=unNombre.
]
