Class {
	#name : #Archivo,
	#superclass : #Object,
	#instVars : [
		'nombre'
	],
	#category : #'Objetos1-Cliente_de_correo_electronico-Model'
}

{ #category : #'as yet unclassified' }
Archivo class >> conNombre: unNombre [

^(self new) nombre: unNombre.
]

{ #category : #accessing }
Archivo >> nombre [

	^nombre.
]

{ #category : #accessing }
Archivo >> nombre: unNombre [

nombre := unNombre.
]

{ #category : #accessing }
Archivo >> tamaño [

 ^nombre size.
]
