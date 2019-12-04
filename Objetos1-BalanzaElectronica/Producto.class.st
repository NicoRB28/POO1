Class {
	#name : #Producto,
	#superclass : #Object,
	#instVars : [
		'peso',
		'precioPorKilo',
		'descripcion'
	],
	#category : #'Objetos1-BalanzaElectronica'
}

{ #category : #accessing }
Producto >> descripcion [
	^ descripcion
]

{ #category : #accessing }
Producto >> descripcion: anObject [
	descripcion := anObject
]

{ #category : #accessing }
Producto >> peso [
	^ peso
]

{ #category : #accessing }
Producto >> peso: anObject [
	peso := anObject
]

{ #category : #public }
Producto >> precio [

^(peso * precioPorKilo).
]

{ #category : #accessing }
Producto >> precioPorKilo [
	^ precioPorKilo
]

{ #category : #accessing }
Producto >> precioPorKilo: anObject [
	precioPorKilo := anObject
]
