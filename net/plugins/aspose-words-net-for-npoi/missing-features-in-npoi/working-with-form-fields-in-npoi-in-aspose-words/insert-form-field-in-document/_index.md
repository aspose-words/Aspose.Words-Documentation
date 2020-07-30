---
title: Insert Form Field in Document
type: docs
weight: 10
url: /net/insert-form-field-in-document/
---

## **Aspose.Words - Insert Form Field in Document**
In Aspose.Words the DocumentBuilder.InsertField method is used to insert new fields into a document. The first parameter accepts the full field code of the field to be inserted. The second parameter is optional and allows the field result of the field to be set manually. If this is not supplied then the field is updated automatically. You can pass null or empty to this parameter to insert a field with an empty field value.

**C#**

{{< highlight cs >}}

             Document doc = new Document();

            DocumentBuilder builder = new DocumentBuilder(doc);

            // Insert a Form Field

            string[] items = { "One", "Two", "Three" };

            builder.InsertComboBox("DropDown", items, 0);

            doc.Save("FormFieldTest.docx");


{{< /highlight >}}
## **Download Running Code**
Download **Insert Form Field in Document** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1525854)
- [GitHub](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI-v1.1/06.01-InsertFormField.zip)

{{% alert color="primary" %}} 

For more details, visit [Inserting Fields into a Document](/words/net/working-with-form-fields/#workingwithformfields-insertingformfieldsinmicrosoftword).

{{% /alert %}}
