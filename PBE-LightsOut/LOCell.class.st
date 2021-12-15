"
Class: This class represents a single toggleable cell.
Responsibility: This class toggles a cell
 
Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	mouseAction:		<Object>


    Implementation Points
"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [ 
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow .
	onColor := Color paleBlue darker.
	self useSquareCorners .
	self turnOff 
]

{ #category : #accessing }
LOCell >> mouseAction: aBlock [
	mouseAction := aBlock 
]

{ #category : #'event handling' }
LOCell >> mouseMove: anEvent [
]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
	self toggleState.
	mouseAction value
]
