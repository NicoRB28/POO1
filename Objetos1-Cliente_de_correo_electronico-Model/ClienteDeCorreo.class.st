Class {
	#name : #ClienteDeCorreo,
	#superclass : #Object,
	#instVars : [
		'inbox',
		'carpetas'
	],
	#category : #'Objetos1-Cliente_de_correo_electronico-Model'
}

{ #category : #'as yet unclassified' }
ClienteDeCorreo >> agregarCarpeta: unaCarpeta [

	carpetas add: unaCarpeta.
]

{ #category : #'as yet unclassified' }
ClienteDeCorreo >> buscar:unString [
	
	^((self todasLasCarpetas)flatCollect: [ :each | each buscarEmail: unString  ])first.
 
]

{ #category : #initialization }
ClienteDeCorreo >> initialize [ 

carpetas := OrderedCollection new.
inbox := Carpeta nombre: 'inbox'.
]

{ #category : #'as yet unclassified' }
ClienteDeCorreo >> mover:unEmail de:unaCarpeta a:otraCarpeta [
	(((self todasLasCarpetas) includes: unaCarpeta) & (self todasLasCarpetas includes:otraCarpeta))
	ifTrue:[ 
			otraCarpeta agregarArchivo: unEmail.
			unaCarpeta eliminarEmail: unEmail.
			]. 
]

{ #category : #'as yet unclassified' }
ClienteDeCorreo >> recibir: unEmail [

	inbox agregarArchivo: unEmail.
]

{ #category : #'as yet unclassified' }
ClienteDeCorreo >> todasLasCarpetas [

	|tmp|
	
	tmp := carpetas.
	tmp add:inbox.
	^tmp.
]
