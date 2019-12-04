"
I describe a job to be done. 
I cannot be called Job (altough that is a better name) becasue a class with that name already exists in Smalltalk.

"
Class {
	#name : #JobDescription,
	#superclass : #Object,
	#instVars : [
		'effort',
		'priority',
		'description'
	],
	#category : #'Objetos1-JobSchedulerToRefactor'
}

{ #category : #accessing }
JobDescription >> description [
	^ description
]

{ #category : #accessing }
JobDescription >> description: anObject [
	description := anObject
]

{ #category : #accessing }
JobDescription >> effort [
	^ effort
]

{ #category : #accessing }
JobDescription >> effort: anObject [
	effort := anObject
]

{ #category : #accessing }
JobDescription >> priority [
	^ priority
]

{ #category : #accessing }
JobDescription >> priority: anObject [
	priority := anObject
]
