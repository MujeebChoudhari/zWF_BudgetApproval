{
	"contents": {
		"a8417576-09dc-48ab-87d3-982eeba3112c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "zbdgapp.zbdgapp",
			"subject": "ZBDGAPP",
			"name": "ZBDGAPP",
			"documentation": "BGD WF",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"0289414d-1118-4d00-82f1-3b158646f6f9": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"b3d32237-7148-4471-9d57-4be27331ad43": {
					"name": "Approve Budget"
				}
			},
			"sequenceFlows": {
				"aca608d7-eb50-4305-861f-9c9e164f7220": {
					"name": "SequenceFlow2"
				},
				"fe75d85c-2c2d-4975-9657-3356887f1db3": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"b3d32237-7148-4471-9d57-4be27331ad43": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "WF TASK BDG",
			"description": "BDG TASK",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://zUI.testingworkflowuimodule/testing.workflowuimodule",
			"recipientUsers": "${context.nextApprover}",
			"id": "usertask1",
			"name": "Approve Budget",
			"documentation": "BDG WF"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"0fe194e5-1aed-4cdb-92e4-bf077583ae0a": {},
				"02c2f27c-6427-4b12-a68b-22e5bdb929a9": {},
				"6db50e9f-45cc-4157-9a01-12c270e308ff": {},
				"d0d93dbb-f970-4b12-a8be-be89930c23a1": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"0fe194e5-1aed-4cdb-92e4-bf077583ae0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 195,
			"y": 100,
			"width": 100,
			"height": 60,
			"object": "b3d32237-7148-4471-9d57-4be27331ad43"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 2,
			"usertask": 2
		},
		"aca608d7-eb50-4305-861f-9c9e164f7220": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b3d32237-7148-4471-9d57-4be27331ad43"
		},
		"02c2f27c-6427-4b12-a68b-22e5bdb929a9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 196,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "0fe194e5-1aed-4cdb-92e4-bf077583ae0a",
			"object": "aca608d7-eb50-4305-861f-9c9e164f7220"
		},
		"0289414d-1118-4d00-82f1-3b158646f6f9": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"6db50e9f-45cc-4157-9a01-12c270e308ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 360.5,
			"y": 112.5,
			"width": 35,
			"height": 35,
			"object": "0289414d-1118-4d00-82f1-3b158646f6f9"
		},
		"fe75d85c-2c2d-4975-9657-3356887f1db3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "b3d32237-7148-4471-9d57-4be27331ad43",
			"targetRef": "0289414d-1118-4d00-82f1-3b158646f6f9"
		},
		"d0d93dbb-f970-4b12-a8be-be89930c23a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "245,130 328,130 328,143 365,143",
			"sourceSymbol": "0fe194e5-1aed-4cdb-92e4-bf077583ae0a",
			"targetSymbol": "6db50e9f-45cc-4157-9a01-12c270e308ff",
			"object": "fe75d85c-2c2d-4975-9657-3356887f1db3"
		}
	}
}