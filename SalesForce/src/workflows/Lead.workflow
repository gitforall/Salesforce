<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Email</fullName>
        <description>New Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>hari.bilindia@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Dev_2</fullName>
        <field>Country</field>
        <formula>IF( Country  = null, &apos;India&apos;, &apos;US&apos;)</formula>
        <name>Dev--2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Dev-001</fullName>
        <actions>
            <name>New_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Dev_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Industry</field>
            <operation>equals</operation>
            <value>Banking</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
