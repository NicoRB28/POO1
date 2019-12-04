"
I test JobScheduler
"
Class {
	#name : #JobSchedulerTest,
	#superclass : #TestCase,
	#instVars : [
		'firstJob',
		'highestPriorityJob',
		'mostEffortJob',
		'lastJob'
	],
	#category : #'Objetos1-JobSchedulerToRefactor'
}

{ #category : #private }
JobSchedulerTest >> initializieJobs [
	firstJob := JobDescription  new.
	firstJob
		priority: 1;
		description: 'Este es el primero';
		effort: 1.
	highestPriorityJob := JobDescription new.
	highestPriorityJob
		priority: 100;
		description: 'Este es el de mas prioridad';
		effort: 1.
	mostEffortJob := JobDescription new.
	mostEffortJob
		priority: 1;
		description: 'Este es el de mas prioridad';
		effort: 100.
	lastJob := JobDescription new.
	lastJob
		priority: 1;
		description: 'Este es el de mas prioridad';
		effort: 1
]

{ #category : #private }
JobSchedulerTest >> scheduleJobsIn: aScheduler [
	aScheduler
		schedule: firstJob;
		schedule: highestPriorityJob;
		schedule: mostEffortJob;
		schedule: lastJob
]

{ #category : #running }
JobSchedulerTest >> setUp [
	self initializieJobs.

]

{ #category : #testing }
JobSchedulerTest >> testNext [
	| scheduler |
	scheduler := JobScheduler withFifo.
	self scheduleJobsIn: scheduler.
	self assert: scheduler next == firstJob.
	self assert: scheduler jobs size == 3.
	
	scheduler := JobScheduler withLifo.
	self scheduleJobsIn: scheduler.
	self assert: scheduler next == lastJob.
	self assert: scheduler jobs size == 3.
	
	scheduler := JobScheduler withPriority.	
	self scheduleJobsIn: scheduler.
	self assert: scheduler next == highestPriorityJob.
	self assert: scheduler jobs size == 3.
	
	scheduler := JobScheduler withMostEffort.
	self scheduleJobsIn: scheduler.
	self assert: scheduler next == mostEffortJob.
	self assert: scheduler jobs size == 3
]

{ #category : #testing }
JobSchedulerTest >> testSchedule [
	| scheduler |
	scheduler := JobScheduler new.
	scheduler schedule: highestPriorityJob.
	self assert: (scheduler jobs includes: highestPriorityJob )
]

{ #category : #testing }
JobSchedulerTest >> testUnschedule [
	| scheduler |
	scheduler := JobScheduler new.
	self scheduleJobsIn: scheduler.
	scheduler unschedule: highestPriorityJob.
	self deny: (scheduler jobs includes: highestPriorityJob)
]
