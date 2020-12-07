---
title: Working with Content Controls
type: docs
weight: 140
url: /net/working-with-content-controls/
aliases: [/net/template-syntax/#working-with-content-controls]
---

LINQ Reporting Engine enables you to perform certain operations on content controls dynamically while building a report.

**Note –** To work with content controls in template documents using Microsoft Word®, you may need to [show the Developer tab on its ribbon](https://docs.microsoft.com/en-us/visualstudio/vsto/how-to-show-the-developer-tab-on-the-ribbon).

## Setting Checkbox Values Dynamically

You can set checkbox values to either checked or unchecked in your reports dynamically by taking the following steps:

1. Add a checkbox content control to your template at a place where you want it to appear in a result document.
1. By editing content control properties, add a check tag to the title of the checkbox content control using the following syntax.
{{< highlight csharp >}}
<<check [conditional_expression]>>
{{< /highlight >}}
Here, conditional_expression defines a condition upon which the value of the checkbox content control is to be set to checked (or unchecked, if the condition is not met). The conditional expression must return a Boolean value.

While building a report, a conditional expression declared within a check tag is evaluated and the value of its containing checkbox content control is set accordingly. The check tag itself is removed then.

## Setting Content Control Titles Dynamically

You can normally use common expression tags in content control titles, thus forming their contents dynamically. For example, given that s is a string value, you can set a content control title from this value dynamically by putting the following expression tag into the title.

{{< highlight csharp >}}
<<[s]>>
{{< /highlight >}}