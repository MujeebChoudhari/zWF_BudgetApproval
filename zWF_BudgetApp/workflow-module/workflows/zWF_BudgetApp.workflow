{
	"contents": {
		"79f9cfbf-dc05-4afa-91f0-96896001d686": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "zgb_approvebudget",
			"subject": "ZGB_ApproveBudget",
			"name": "ZGB_ApproveBudget",
			"documentation": "GoodBaby :  Budget Workflow Approval",
			"lastIds": "ecc00259-acd6-4476-a2cf-cbbf426a5000",
			"events": {
				"9122a171-af31-4e3a-a858-09cd2e02ee1b": {
					"name": "StartEvent1"
				},
				"a850bf15-df73-4eb5-9046-c2fb5037dd50": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"9965cfd4-6339-45c2-b8f6-9b36aac0859a": {
					"name": "IsApproveFinished"
				},
				"5b1d7b5a-384d-40cd-b143-10c2233c260b": {
					"name": "Approve Budget"
				},
				"efd10410-9a81-44fe-8d5f-953b221eb675": {
					"name": "Send DECLINE decision to requester"
				},
				"be7d2ad6-3b04-43c6-9b6b-90ceaa86b0e5": {
					"name": "Approved"
				},
				"7fb679c8-57ab-4793-861b-93ad2a35fa2f": {
					"name": "Set WF Parametrs"
				},
				"302cf5b3-4a51-41ce-8eea-82543ac82945": {
					"name": "Approval Confirmation To Requestor"
				}
			},
			"sequenceFlows": {
				"4326dc16-2639-4065-b045-a40f620fd00b": {
					"name": "SequenceFlow1"
				},
				"670c22e2-3185-4501-8476-d98da4de74fe": {
					"name": "Yes"
				},
				"15278a36-19e7-494a-8d32-3e7820916cbe": {
					"name": "No"
				},
				"fef61b85-d7fd-40a9-a882-3c6d1156f3cd": {
					"name": "SequenceFlow5"
				},
				"c4fc952f-602b-4ca4-8bce-c3c684b7583a": {
					"name": "Approved"
				},
				"911db23a-dae0-4b6c-87cd-0be264428791": {
					"name": "Rejected"
				},
				"d2cb121f-bfe2-4387-bcd9-0293e19a0f3e": {
					"name": "SequenceFlow8"
				},
				"503d27d3-8ac5-4953-8ada-e0427ab68ff0": {
					"name": "SequenceFlow9"
				},
				"90c1d537-18ce-48cd-b1f4-afcd6463724e": {
					"name": "SequenceFlow12"
				}
			},
			"diagrams": {
				"617e9400-51c3-4878-a1aa-3cc04cedecdc": {}
			}
		},
		"9122a171-af31-4e3a-a858-09cd2e02ee1b": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"a850bf15-df73-4eb5-9046-c2fb5037dd50": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"9965cfd4-6339-45c2-b8f6-9b36aac0859a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsApproveFinished",
			"documentation": "Is All levels of Approval Finished",
			"default": "670c22e2-3185-4501-8476-d98da4de74fe"
		},
		"5b1d7b5a-384d-40cd-b143-10c2233c260b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": " Budget ${context.internalOrder} - ${context.internalOrderDisplayName}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://CreBudgetApprove.gbwfcerbudgetapprove/gb.wf.cer.budget.approve",
			"recipientUsers": "${context.nextApprover}",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "Approve Budget",
			"documentation": "Approve Budget"
		},
		"efd10410-9a81-44fe-8d5f-953b221eb675": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "Send DECLINE decision to requester",
			"documentation": "If one of the approvers declines, the information will be send back to the requester and the workflow ends.",
			"mailDefinitionRef": "e29a113c-2091-4e6d-8536-abb165678e47"
		},
		"be7d2ad6-3b04-43c6-9b6b-90ceaa86b0e5": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approved",
			"default": "911db23a-dae0-4b6c-87cd-0be264428791"
		},
		"7fb679c8-57ab-4793-861b-93ad2a35fa2f": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/zWF_BudgetApp/setWFParameters.js",
			"id": "scripttask1",
			"name": "Set WF Parametrs",
			"documentation": "Set WF Parameters like Step, isApproved"
		},
		"302cf5b3-4a51-41ce-8eea-82543ac82945": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask4",
			"name": "Approval Confirmation To Requestor",
			"mailDefinitionRef": "e2db3a80-6b71-4269-ae1e-6cdb1087ccc1"
		},
		"4326dc16-2639-4065-b045-a40f620fd00b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "9122a171-af31-4e3a-a858-09cd2e02ee1b",
			"targetRef": "9965cfd4-6339-45c2-b8f6-9b36aac0859a"
		},
		"670c22e2-3185-4501-8476-d98da4de74fe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "Yes",
			"documentation": "All Approval Finished",
			"sourceRef": "9965cfd4-6339-45c2-b8f6-9b36aac0859a",
			"targetRef": "302cf5b3-4a51-41ce-8eea-82543ac82945"
		},
		"15278a36-19e7-494a-8d32-3e7820916cbe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.bApproveFinished==false}",
			"id": "sequenceflow3",
			"name": "No",
			"documentation": "Approval InProcess",
			"sourceRef": "9965cfd4-6339-45c2-b8f6-9b36aac0859a",
			"targetRef": "7fb679c8-57ab-4793-861b-93ad2a35fa2f"
		},
		"fef61b85-d7fd-40a9-a882-3c6d1156f3cd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "5b1d7b5a-384d-40cd-b143-10c2233c260b",
			"targetRef": "be7d2ad6-3b04-43c6-9b6b-90ceaa86b0e5"
		},
		"c4fc952f-602b-4ca4-8bce-c3c684b7583a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isApproved==true}",
			"id": "sequenceflow6",
			"name": "Approved",
			"sourceRef": "be7d2ad6-3b04-43c6-9b6b-90ceaa86b0e5",
			"targetRef": "9965cfd4-6339-45c2-b8f6-9b36aac0859a"
		},
		"911db23a-dae0-4b6c-87cd-0be264428791": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "Rejected",
			"sourceRef": "be7d2ad6-3b04-43c6-9b6b-90ceaa86b0e5",
			"targetRef": "efd10410-9a81-44fe-8d5f-953b221eb675"
		},
		"d2cb121f-bfe2-4387-bcd9-0293e19a0f3e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "efd10410-9a81-44fe-8d5f-953b221eb675",
			"targetRef": "a850bf15-df73-4eb5-9046-c2fb5037dd50"
		},
		"503d27d3-8ac5-4953-8ada-e0427ab68ff0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "7fb679c8-57ab-4793-861b-93ad2a35fa2f",
			"targetRef": "5b1d7b5a-384d-40cd-b143-10c2233c260b"
		},
		"90c1d537-18ce-48cd-b1f4-afcd6463724e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "302cf5b3-4a51-41ce-8eea-82543ac82945",
			"targetRef": "a850bf15-df73-4eb5-9046-c2fb5037dd50"
		},
		"617e9400-51c3-4878-a1aa-3cc04cedecdc": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"5b8ca97b-ad06-4828-9271-c5e050e95a3d": {},
				"e26593af-d0e7-4ed7-a388-61533a0d28f3": {},
				"d40e0e21-8a79-4c30-af72-6175a065d474": {},
				"bcd30679-f2a6-459c-afdc-4ed77de4260d": {},
				"0bf04f49-f470-46ff-8a5e-08f49e792ab9": {},
				"b0670394-86a3-4f6c-b3e4-7d69730358b0": {},
				"40712b8f-8027-41b0-a8ed-f9f032634fef": {},
				"b15f7735-7cf1-4235-8ab3-1f9b3f038afe": {},
				"cbd291e5-0826-4a81-8b30-6707dc59f319": {},
				"1909ef8d-1a6f-4b7e-8d92-04826f5e13f8": {},
				"25e85f98-5f9b-4084-bbb2-c8e33b7ec829": {},
				"bd11a22f-8c19-4f20-b2f4-94ea8e6fd901": {},
				"93eacdbe-a80e-4be9-a118-45f0a59a0e22": {},
				"bec27c3f-62b3-4e1b-b7b7-b070457b718e": {},
				"c195eade-4845-4f0b-808b-fae57665df02": {},
				"581fbe3d-96e9-41d9-9dab-aabfb81e5d54": {},
				"de03d6ae-d825-45b6-9f7e-fbd28db4b491": {}
			}
		},
		"5b8ca97b-ad06-4828-9271-c5e050e95a3d": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -301,
			"y": 56.99999940395355,
			"width": 32,
			"height": 32,
			"object": "9122a171-af31-4e3a-a858-09cd2e02ee1b"
		},
		"e26593af-d0e7-4ed7-a388-61533a0d28f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 657.9999952316284,
			"y": 60.49999940395355,
			"width": 35,
			"height": 35,
			"object": "a850bf15-df73-4eb5-9046-c2fb5037dd50"
		},
		"d40e0e21-8a79-4c30-af72-6175a065d474": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-285,75.49999940395355 -59,75.49999940395355",
			"sourceSymbol": "5b8ca97b-ad06-4828-9271-c5e050e95a3d",
			"targetSymbol": "bcd30679-f2a6-459c-afdc-4ed77de4260d",
			"object": "4326dc16-2639-4065-b045-a40f620fd00b"
		},
		"bcd30679-f2a6-459c-afdc-4ed77de4260d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": -80,
			"y": 56.99999940395355,
			"object": "9965cfd4-6339-45c2-b8f6-9b36aac0859a"
		},
		"0bf04f49-f470-46ff-8a5e-08f49e792ab9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-59,98.49999940395355 -59,176 205,176",
			"sourceSymbol": "bcd30679-f2a6-459c-afdc-4ed77de4260d",
			"targetSymbol": "581fbe3d-96e9-41d9-9dab-aabfb81e5d54",
			"object": "670c22e2-3185-4501-8476-d98da4de74fe"
		},
		"b0670394-86a3-4f6c-b3e4-7d69730358b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 232.9999988079071,
			"y": 45.99999940395355,
			"width": 100,
			"height": 60,
			"object": "5b1d7b5a-384d-40cd-b143-10c2233c260b"
		},
		"40712b8f-8027-41b0-a8ed-f9f032634fef": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-59,76.99999970197678 28,76.99999970197678",
			"sourceSymbol": "bcd30679-f2a6-459c-afdc-4ed77de4260d",
			"targetSymbol": "bec27c3f-62b3-4e1b-b7b7-b070457b718e",
			"object": "15278a36-19e7-494a-8d32-3e7820916cbe"
		},
		"b15f7735-7cf1-4235-8ab3-1f9b3f038afe": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 487.9999964237213,
			"y": 47.999999701976776,
			"width": 100,
			"height": 60,
			"object": "efd10410-9a81-44fe-8d5f-953b221eb675"
		},
		"cbd291e5-0826-4a81-8b30-6707dc59f319": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 371.9999976158142,
			"y": 56.999999701976776,
			"object": "be7d2ad6-3b04-43c6-9b6b-90ceaa86b0e5"
		},
		"1909ef8d-1a6f-4b7e-8d92-04826f5e13f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "332.9999988079071,76.99999955296516 371.9999976158142,76.99999955296516",
			"sourceSymbol": "b0670394-86a3-4f6c-b3e4-7d69730358b0",
			"targetSymbol": "cbd291e5-0826-4a81-8b30-6707dc59f319",
			"object": "fef61b85-d7fd-40a9-a882-3c6d1156f3cd"
		},
		"25e85f98-5f9b-4084-bbb2-c8e33b7ec829": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "392.9999976158142,57.499999701976776 393,7 -59,7 -59,57.49999940395355",
			"sourceSymbol": "cbd291e5-0826-4a81-8b30-6707dc59f319",
			"targetSymbol": "bcd30679-f2a6-459c-afdc-4ed77de4260d",
			"object": "c4fc952f-602b-4ca4-8bce-c3c684b7583a"
		},
		"bd11a22f-8c19-4f20-b2f4-94ea8e6fd901": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "413.9999976158142,77.99999970197678 487.9999964237213,77.99999970197678",
			"sourceSymbol": "cbd291e5-0826-4a81-8b30-6707dc59f319",
			"targetSymbol": "b15f7735-7cf1-4235-8ab3-1f9b3f038afe",
			"object": "911db23a-dae0-4b6c-87cd-0be264428791"
		},
		"93eacdbe-a80e-4be9-a118-45f0a59a0e22": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "587.9999964237213,77.99999970197678 657.9999952316284,77.99999940395355",
			"sourceSymbol": "b15f7735-7cf1-4235-8ab3-1f9b3f038afe",
			"targetSymbol": "e26593af-d0e7-4ed7-a388-61533a0d28f3",
			"object": "d2cb121f-bfe2-4387-bcd9-0293e19a0f3e"
		},
		"bec27c3f-62b3-4e1b-b7b7-b070457b718e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -22,
			"y": 46,
			"width": 100,
			"height": 60,
			"object": "7fb679c8-57ab-4793-861b-93ad2a35fa2f"
		},
		"c195eade-4845-4f0b-808b-fae57665df02": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28,76 282.9999988079071,75.99999940395355",
			"sourceSymbol": "bec27c3f-62b3-4e1b-b7b7-b070457b718e",
			"targetSymbol": "b0670394-86a3-4f6c-b3e4-7d69730358b0",
			"object": "503d27d3-8ac5-4953-8ada-e0427ab68ff0"
		},
		"581fbe3d-96e9-41d9-9dab-aabfb81e5d54": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 155,
			"y": 146,
			"width": 100,
			"height": 60,
			"object": "302cf5b3-4a51-41ce-8eea-82543ac82945"
		},
		"de03d6ae-d825-45b6-9f7e-fbd28db4b491": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "205,176 678.5,176 678.4999952316284,93.99999940395355",
			"sourceSymbol": "581fbe3d-96e9-41d9-9dab-aabfb81e5d54",
			"targetSymbol": "e26593af-d0e7-4ed7-a388-61533a0d28f3",
			"object": "90c1d537-18ce-48cd-b1f4-afcd6463724e"
		},
		"ecc00259-acd6-4476-a2cf-cbbf426a5000": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 5,
			"maildefinition": 5,
			"sequenceflow": 14,
			"startevent": 1,
			"boundarytimerevent": 2,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1,
			"mailtask": 5,
			"exclusivegateway": 2
		},
		"e29a113c-2091-4e6d-8536-abb165678e47": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.requesterEmail}",
			"subject": "[P2P] Budget request Rejected",
			"text": "Dear requester ${context.requesterFirstName} ${context.requesterSecondName},\n\n\nYour Budget request was rejected, please check the comments.\n\nTitle: ${context.ShortText}\nRequester: ${context.requesterFirstName} ${context.requesterSecondName}\nLegal entity: ${context.legalEntity} - ${context.legalEntityDisplayName}\nCost center: ${context.costCenter} - ${context.costCenterDisplayName}\nType: ${context.typeDisplayText} \nInternal Order: ${context.internalOrder} - ${context.internalOrderDisplayName}\nAmount requested: ${context.requestedAmountFormatted} ${context.oStatusData.Zcurr}\n\nComment:\n${context.sCommentHistory}\n\nAttachments: ${context.sAttachementUrls}\n",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition1"
		},
		"e2db3a80-6b71-4269-ae1e-6cdb1087ccc1": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "${context.requesterEmail}",
			"subject": "[P2P] Budget request - Approved",
			"text": "Dear ${context.requesterFirstName} ${context.requesterSecondName},\n\nYour budget request has been approved.\n\nTitle: ${context.ShortText}\nRequester: ${context.requesterFirstName} ${context.requesterSecondName}\nLegal entity: ${context.legalEntity} - ${context.legalEntityDisplayName}\nCost center: ${context.costCenter} - ${context.costCenterDisplayName}\nType: ${context.typeDisplayText} \nInternal Order: ${context.internalOrder} - ${context.internalOrderDisplayName}\nAmount requested: ${context.requestedAmountFormatted} ${context.oStatusData.Zcurr}\n\nComment:\n${context.sCommentHistory}\n\nAttachments: ${context.sAttachementUrls}\n\nLink to P2P: https://flpnwc-tw72h2gxnz.dispatcher.eu2.hana.ondemand.com/\n\n",
			"id": "maildefinition4"
		}
	}
}