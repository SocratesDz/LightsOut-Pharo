Class {
	#name : #'BaselineOfPBE_LightsOut',
	#superclass : #BaselineOf,
	#category : #'BaselineOfPBE-LightsOut'
}

{ #category : #baselines }
BaselineOfPBE_LightsOut >> baseline: spec [
	<baseline>
	spec 
		for: #common
		do: [ spec package: 'PBE-LightsOut' ]
]
