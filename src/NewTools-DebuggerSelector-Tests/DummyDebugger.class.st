"
I am a dummy debugger.
My instances simulate debugger classes that are named, and can handle any context.
"
Class {
	#name : #DummyDebugger,
	#superclass : #Object,
	#instVars : [
		'name',
		'tag'
	],
	#category : #'NewTools-DebuggerSelector-Tests'
}

{ #category : #'instance creation' }
DummyDebugger class >> named: aString [
	^self new name: aString
]

{ #category : #'instance creation' }
DummyDebugger >> debugSession: aDebugSession [
	tag := aDebugSession
	
]

{ #category : #'deferred message' }
DummyDebugger >> defer: aBlock [
	aBlock value 
]

{ #category : #testing }
DummyDebugger >> handlesContext: aContext [
	^true
]

{ #category : #accessing }
DummyDebugger >> name: anObject [
	name := anObject
]

{ #category : #accessing }
DummyDebugger >> tag [
	^ tag
]

{ #category : #accessing }
DummyDebugger >> tag: anObject [
	tag := anObject
]

{ #category : #'ui requests' }
DummyDebugger >> warningDefaultAction: aWarningException [
	tag := aWarningException
]

{ #category : #'as yet unclassified' }
DummyDebugger >> zeroDivide [
	1/0
]