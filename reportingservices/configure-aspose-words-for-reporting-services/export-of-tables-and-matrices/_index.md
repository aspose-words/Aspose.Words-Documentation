---
title: Export of Tables and Matrices
type: docs
weight: 60
url: /reportingservices/export-of-tables-and-matrices/
---

{{% alert color="primary" %}} 

The following configuration setting only applies to the Positioned Layout.

{{% /alert %}} 

There are two ways Aspose.Words for Reporting Services can export RDL tables and matrices when exporting reports in the Positioned Layout: 

- As Microsoft Word tables (default) 
- As textboxes 

Visually, the output of both options will look identical most of the time. Differences will be noticeable if a user opens a generated document in Microsoft Word and attempts to edit the table. 

## Export Tables and Matrices as Tables

When you export a report to a Microsoft Word document format, you would normally want tables and matrices defined in the report to appear as Microsoft Word tables in the resulting document. This produces a document that is easy to subsequently edit in Microsoft Word; that’s why this is the default option.

The drawback of this method is that the table in the generated document might look slightly different from the original report design. For example, in Microsoft Word it is not possible to set different top paddings in table cells belonging to one row, whereas it is possible to do that in RDL. 

## Export Tables and Matrices as Textboxes

In some rare cases you might find it better to export tables and matrices as a set of textboxes and rectangle shapes (each cell will be represented by a textbox). This could make the generated document look more like the original report, but it could make further manual editing in Microsoft Word harder (the user will have to deal with numerous adjacent textboxes instead of a single table).

To export RDL tables and matrices as textboxes, add the following lines to the *<Extension>* element corresponding to a particular renderer: 

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <UseFloatingTables>False</UseFloatingTables>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
