---
title: Mustache Template Syntax v2
type: docs
weight: 40
url: /net/mustache-template-syntax-v2/
---

MG: Take into account the comments on the previous articles. This article must also be updated.

This article is already similar to the article about AW, but you need more details and information on some cases. I added brief comments below.

The Mustache template syntax is a new syntax that allows you to create templates and use them with mail merge. It uses plain text markers instead of using the merge fields and this will give the ability to mail merge into other fields such as plain text fields.
## **Perform Mail Merge into Additional Fields**
The common use case is to execute a mail merge operation into [MERGEFIELD fields](https://support.microsoft.com/en-us/office/field-codes-mergefield-field-7a6d24a1-68a6-4b05-8359-1dc087daf4e6?ui=en-US&rs=en-US&ad=US) but in other cases, the mail merge is executed into other fields such as plain text fields "{{fieldName}}".

You can freely mix them in your template with Word fields such as IF or Formula fields. To perform the mail merge into merge fields and into additional fields types, you need to set the property [MailMerge.UseNonMergeFields](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/properties/usenonmergefields) to true as the following:

{{< highlight csharp >}}

 doc.MailMerge.UseNonMergeFields = true;

{{< /highlight >}}



The following example shows how to perform a simple data insertion into merge fields and then send the document to the browser inline (you can download the template file of this example [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.ExecuteArray.doc)): [MG: Need more information:  why should I do this, what is the result?]

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Mail-Merge-SimpleMailMerge-SimpleMailMerge.cs" >}}
### **Object.Attribute Syntax**
You can easily merge attributes of fields using the following syntax **{{Address.Street}}**.** **This will merge data from XML data which looks like this: [MG: Need more information:  why should I do this, what is the result?]

{{< highlight html >}}

 <Order> // <-- Current context is here.

   <Number>23</Number>

   <Address>

      <Street>Nelson Street</Street>

      <Suburb>Howick</Suburb>

      <City>Auckland</City>

   </Address>

   <PhoneNumber>543 1234</PhoneNumber>

</Order>

{{< /highlight >}}


### **Foreach Blocks**
Aspose.Words enables you to merge data from multiple records using the **foreach** tag as it's shown in the following example (it is similar to the mail merge with regions):

{{< highlight plain >}}

 {{ #foreach Order }}

  {{ Number }}

  {{ Address.Street }}

    {{ #foreach Item }}

       {{ Description }} {{ Cost}} {{ Total }}

    {{/foreach Item }}

{{ /foreach Order }}

{{< /highlight >}}

You can also mix those fields and include them in other Word fields as it's shown in the following example (you can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/VendorTemplate.doc)):



{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Mail-Merge-MailMergeUsingMustacheSyntax-MailMergeUsingMustacheSyntax.cs" >}}
### **Conditional Blocks**
Aspose.Words enables you to use mail merge with the IF statement as shown in the following example (IF block executes only if the Boolean expression associated with it is true):

{{< highlight java >}}

 { IF "{{ GENDER }}" = “MALE” “true text” “false text” }

{{< /highlight >}}

The following code example shows how to use mail merge with an IF statement in a mustache template:



{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeUsingMustacheSyntax-UseOfifelseMustacheSyntax.cs" >}}
