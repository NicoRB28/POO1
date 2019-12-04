Class {
	#name : #Ticket,
	#superclass : #Object,
	#instVars : [
		'fecha',
		'cantidadDeProductos',
		'pesoTotal',
		'precioTotal',
		'productos'
	],
	#category : #'Objetos1-BalanzaElectronica'
}

{ #category : #accessing }
Ticket >> cantidadDeProductos [
	^ cantidadDeProductos
]

{ #category : #accessing }
Ticket >> cantidadDeProductos: anObject [
	cantidadDeProductos := anObject
]

{ #category : #accessing }
Ticket >> fecha [
	^ fecha
]

{ #category : #accessing }
Ticket >> fecha: anObject [
	fecha := anObject
]

{ #category : #public }
Ticket >> impuesto [

	^((precioTotal*21)/100)
]

{ #category : #accessing }
Ticket >> pesoTotal [
	^ pesoTotal
]

{ #category : #accessing }
Ticket >> pesoTotal: anObject [
	pesoTotal := anObject
]

{ #category : #accessing }
Ticket >> precioTotal [
	^ precioTotal
]

{ #category : #accessing }
Ticket >> precioTotal: anObject [
	precioTotal := anObject
]
