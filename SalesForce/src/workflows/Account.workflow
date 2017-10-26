<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>proceesbuilder</fullName>
        <description>proceesbuilder</description>
        <protected>false</protected>
        <recipients>
            <recipient>hari.bilindia@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/CustomerPortalChangePwdEmail</template>
    </alerts>
    <tasks>
        <fullName>Email</fullName>
        <assignedTo>hari.bilindia@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>true</protected>
        <status>Not Started</status>
        <subject>Email</subject>
    </tasks>
</Workflow>
