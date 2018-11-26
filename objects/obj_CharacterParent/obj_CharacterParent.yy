{
    "id": "0e844412-cf1a-47ab-a4d4-a37bfcf690b6",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_CharacterParent",
    "eventList": [
        {
            "id": "64415954-07a1-48ae-b38a-ec9a5dd5fd47",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "0e844412-cf1a-47ab-a4d4-a37bfcf690b6"
        },
        {
            "id": "70fe1786-1f82-45be-b396-a1bfdf02ddbf",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "0e844412-cf1a-47ab-a4d4-a37bfcf690b6"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "5106e5ec-c086-4b1a-8fad-d1683ac8f0e3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "ds_list_create()"
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "ds_list_create()",
            "varName": "inventory",
            "varType": 6
        },
        {
            "id": "aa6b5150-e63d-4169-888f-2238111c3c8e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "ds_map_create()"
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "ds_map_create()",
            "varName": "itemMap",
            "varType": 6
        },
        {
            "id": "d20adc60-de76-45bb-a93a-1f82bc6d8d10",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "hpLevel",
            "varType": 1
        },
        {
            "id": "a73b0378-212c-45fa-ac00-1d74c7e8dd9a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "poisoned",
            "varType": 3
        },
        {
            "id": "c8c4f1ca-8a36-47ad-aa90-2d48778255ea",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "poisonDamage",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}