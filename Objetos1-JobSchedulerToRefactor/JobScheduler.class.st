"
I schedule jobs.
I know that I am badly designed!

"
Class {
	#name : #JobScheduler,
	#superclass : #Object,
	#instVars : [
		'jobs',
		'strategy'
	],
	#category : #'Objetos1-JobSchedulerToRefactor'
}

{ #category : #'as yet unclassified' }
JobScheduler class >> withFifo [

	^self new strategy: [ :trabajos | trabajos first. ]

]

{ #category : #'as yet unclassified' }
JobScheduler class >> withLifo [

	^self new strategy:[:trabajos| trabajos last].

]

{ #category : #'as yet unclassified' }
JobScheduler class >> withMostEffort [

	^self new strategy: [ :trabajos | ( trabajos asSortedCollection: [:a :b | a effort > b effort ])removeFirst ].

]

{ #category : #'as yet unclassified' }
JobScheduler class >> withPriority [

	^self new strategy: [ :trabajos | (trabajos asSortedCollection:[:a :b| a priority > b priority ])removeFirst].

]

{ #category : #initialize }
JobScheduler >> initialize [
   jobs := OrderedCollection new. 
]

{ #category : #accessing }
JobScheduler >> jobs [
	^ jobs
]

{ #category : #accessing }
JobScheduler >> next [
	|nxt|
	nxt := strategy value:jobs.
	self unschedule: nxt.
	^nxt.
	"| sortedJobs next |
	self strategy = 'FIFO'
		ifTrue: [ next := self jobs first.
			self unschedule: next.
			^ next ].
	self strategy = 'LIFO'
		ifTrue: [ next := self jobs last.
			self unschedule: next.
			^ next ].
	self strategy = 'Priority'
		ifTrue: [ sortedJobs := self jobs asSortedCollection: [ :a :b | a priority > b priority ].
			next := sortedJobs removeFirst.
			self unschedule: next.
			^ next ].
	self strategy = 'MostEffortFirst'
		ifTrue: [ sortedJobs := self jobs asSortedCollection: [ :a :b | a effort > b effort ].
			next := sortedJobs removeFirst.
			self unschedule: next.
			^ next ]"
]

{ #category : #schedulling }
JobScheduler >> schedule: job [
	jobs add: job
]

{ #category : #accessing }
JobScheduler >> strategy [
	^ strategy
]

{ #category : #accessing }
JobScheduler >> strategy: anObject [
	strategy := anObject
]

{ #category : #schedulling }
JobScheduler >> unschedule: job [
	jobs remove: job
]
