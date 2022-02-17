---
title: SPListQuery Element
articleTitle: SPListQuery Element
linktitle: SPListQuery Element
description: "This page describes SPListQuery element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 140
url: /sharepoint/splistquery-element/
---

The SPListQuery element contains information about CAML query for retrieving report data from a SharePoint list. Use it with [SPDataSource](/words/sharepoint/spdatasource-element/). Use the ListName element to set the name of the list to query. Use the SiteUrl element of the data source to specify sub-site if needed. Set CAML query via the [Query](/words/sharepoint/queries-element/) element. It is best to wrap the element contents in ![CDATA[]] for readability as CAML query is in XML. The same is true for the ViewFields element. In a CAML query, parameters are substituted by name. An entire element inside the query must match a parameter name listed in the [Parameters](/words/sharepoint/parameters-element/) element. A parameter name must start with “@”.

If CAML query is not specified, all elements in the list are retrieved. CAML queries are executed via Lists.asmx web service so the returned field names are often prefixed with “ows_”. See CAML query schema description on [MSDN](https://docs.microsoft.com/en-us/sharepoint/dev/schema/query-schema). The queries are executed recursively, traversing sub-folders of the list. Please note that a bunch of fields is always returned regardless of the ViewFields element. This is the behavior of the SharePoint Lists web service.

|Name|Cardinality|Has Children|Description|
| :- | :- | :- | :- |
|TableNames|0-1|Yes|Describes table names to assign to the tables returned by the query.|
|ListName|1|No|The name of the list from where to retrieve data. It must not be empty.|
|Query|0-1|No|CAML query to get filter and order the list items.|
|ViewFields|0-1|No|Describes which columns to get from the list.|
Here is an example of the report with the SPListQuery element:

{{< highlight csharp >}}
<Report xmlns="https://www.aspose.com/Words/SharePoint/Reporting" >
  <DataSets>
    <DataSet>
      <DataSource>
        <SPDataSource>
          <SiteUrl>https://localhost</SiteUrl>
        </SPDataSource>
      </DataSource>
      <Queries>
        <SPListQuery>
          <TableNames>
            <TableName>Docs</TableName>
          </TableNames>
          <ListName>Documents</ListName>
          <Query><![CDATA[
            <Where>
              <Contains>
                <FieldRef Name='FileLeafRef'/>
                <Value Type='Text'>s</Value>
              </Contains>
            </Where>
          ]]></Query>
          <ViewFields><![CDATA[
            <FieldRef Name='FileLeafRef' />
            <FieldRef Name='ID' />
          ]]></ViewFields>
        </SPListQuery>
      </Queries>
    </DataSet>
  </DataSets>
</Report>
{{< /highlight >}}

{{% alert color="primary" %}}

Note that internal field names like FileLeafRef are used inside the query. However, Lists web service returns, FileLeafRef field as ows_FileLeafRef. And it returns about 15 fields instead of just the two mentioned in the ViewFields element.

{{% /alert %}}
