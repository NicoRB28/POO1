Class {
	#name : #Balanza,
	#superclass : #Object,
	#instVars : [
		'cantidadDeProductos',
		'productos'
	],
	#category : #'Objetos1-BalanzaElectronica'
}

{ #category : #public }
Balanza >> agregarProducto: unObjeto [

	| producto |
	producto := unObjeto.
	"cantidadDeProductos := cantidadDeProductos + 1.ahora que hay una coleccion no es necesario"
	"precioTotal := precioTotal + (producto precio).ahora que hay una coleccion no es necesario"
	"pesoTotal := pesoTotal + producto peso.""ahora que los productos estan en una coleccion no es necesario"
	productos add: producto.
]

{ #category : #accessing }
Balanza >> cantidadDeProductos [ 
	
	"^cantidadDeProductos."
	^productos size.
]

{ #category : #public }
Balanza >> emitirTicket [

|ticket|
ticket := Ticket new.
ticket fecha: Date today.
ticket cantidadDeProductos: self cantidadDeProductos.
ticket pesoTotal: self pesoTotal.
ticket precioTotal: self precioTotal.
^ticket.

]

{ #category : #initalize }
Balanza >> initialize [

cantidadDeProductos :=0.
"precioTotal :=0.
pesoTotal :=0."
productos := OrderedCollection new.

]

{ #category : #accessing }
Balanza >> pesoTotal [

	"^pesoTotal."
	^productos sumNumbers:[ :each | each peso].
]

{ #category : #public }
Balanza >> ponerEnCero [
	"reinicia la balanza en 0"
	cantidadDeProductos := 0.
	"precioTotal := 0.
	pesoTotal := 0."
	productos removeAll.
]

{ #category : #accessing }
Balanza >> precioTotal [
	
	"^precioTotal."
	^productos sumNumbers: [ :each | each precio ].
]
