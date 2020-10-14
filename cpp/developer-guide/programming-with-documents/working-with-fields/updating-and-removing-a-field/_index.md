---
title: Updating and Removing a Field
type: docs
weight: 30
url: /cpp/updating-and-removing-a-field/
---

## How to Update Fields

When a document is loaded, Aspose.Words mimics the behavior of Microsoft Word with the option to automatically update fields is switched off. The behavior can be summarized as follows:

- When you open/save a document the fields remain intact.

## Removing a Field

Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. Below example removes a field from the document. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}

## Update LastSavedTime Property Before Saving

You can use SaveOptions->UpdateLastSavedTimeProperty property whether to update the corresponding built-in document property (BuiltInDocumentProperties->LastSavedTime) on document save. Following example shows how to update this property. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}

## How to Apply Custom Formatting to Field Result

Aspose.Words provides API for custom formatting of the field's result. You can implement IFieldResultFormatter interface to control how the field result is formatted. You can apply numeric format switch, i.e. \# "#.##", date/time format switch, i.e. \@ "dd.MM.yyyy", and number format switch, i.e. \* Ordinal. Following code example shows how to apply custom formatting for the field's result.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

## How to Apply Custom Formatting to Time Field

By default Aspose.Words updates TIME field with current culture short time format. We figured out that there is a difference between MS Word formatting and .NET/Windows formatting and also between different .NET Framework versions. If you want to format the Time field according to your requirement, you can achieve this by implementing IFieldUpdateCultureProvider interface. Below code example shows how to apply custom formatting to the Time field.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}
