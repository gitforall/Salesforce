<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Email_workflow</fullName>
        <ccEmails>hari.salamaddur@gmail.com</ccEmails>
        <description>New Email workflow</description>
        <protected>false</protected>
        <recipients>
            <recipient>hari.bilindia@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
    <fieldUpdates>
        <fullName>field_val_update</fullName>
        <field>item__c</field>
        <literalValue>DESKTOP</literalValue>
        <name>field val update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>COSTandGROPUP_wf</fullName>
        <actions>
            <name>New_Email_workflow</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>field_val_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Item_Master__c.Item_Cost__c</field>
            <operation>lessThan</operation>
            <value>1000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Item_Master__c.Item_Group__c</field>
            <operation>equals</operation>
            <value>Large Items</value>
        </criteriaItems>
        <description>criteria : item cost less than 1000 and item group is large items</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
