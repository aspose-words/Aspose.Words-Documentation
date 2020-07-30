---
title: Accessing Document Properties
type: docs
weight: 10
url: /java/accessing-document-properties/
---

## **Aspose.Words - Accessing Document Properties**
Document properties allow some useful information to be stored along with the document. There is a system (built-in) and user-defined (custom) properties. Built-in properties contain such things as document title, author's name, document statistics, and so on. Custom properties are just name-value pairs where the user defines both the name and value.

You can use document properties in your document automation project to store some useful info along with the document such as when the document was received/processed/time stamped and so on.

**Java**

{{< highlight java >}}

 Document doc = new Document(dataDir + "document.doc");

System.out.println("============ Built-in Properties ============");

for (DocumentProperty prop : doc.getBuiltInDocumentProperties())

    System.out.println(MessageFormat.format("{0} : {1}", prop.getName(), prop.getValue()));

System.out.println("============ Custom Properties ============");

for (DocumentProperty prop : doc.getCustomDocumentProperties())

    System.out.println(MessageFormat.format("{0} : {1}", prop.getName(), prop.getValue()));

FileFormatInfo info = FileFormatUtil.detectFileFormat(dataDir + "document.doc");

System.out.println("The document format is: " + FileFormatUtil.loadFormatToExtension(info.getLoadFormat()));

System.out.println("Document is encrypted: " + info.isEncrypted());

System.out.println("Document has a digital signature: " + info.hasDigitalSignature());

{{< /highlight >}}
## **docx4j - Accessing Document Properties**
Shows how to access a docx's:

- Core properties (Dublin Core title, creator etc)
- Extended properties (app.xml)
- Custom properties (where you can store your own data, as shown here)

**Java**

{{< highlight java >}}

 WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.load(new java.io.File(inputfilepath));

// Let's look at the core properties

org.docx4j.openpackaging.parts.DocPropsCorePart docPropsCorePart = wordMLPackage.getDocPropsCorePart();

org.docx4j.docProps.core.CoreProperties coreProps = (org.docx4j.docProps.core.CoreProperties)docPropsCorePart.getJaxbElement();

// Title of the document

// Note: Word for Mac 2010 doesn't set title

String title = "Missing";

List<String> list = coreProps.getTitle().getValue().getContent();

if (list.size() > 0)

{

	title = list.get(0);

}

System.out.println("'dc:title' is " + title);

// Extended properties

org.docx4j.openpackaging.parts.DocPropsExtendedPart docPropsExtendedPart = wordMLPackage.getDocPropsExtendedPart();

org.docx4j.docProps.extended.Properties extendedProps = (org.docx4j.docProps.extended.Properties)docPropsExtendedPart.getJaxbElement();

// Document creator Application

System.out.println("'Application' is " + extendedProps.getApplication() + " v." + extendedProps.getAppVersion());

// Custom properties

org.docx4j.openpackaging.parts.DocPropsCustomPart docPropsCustomPart = wordMLPackage.getDocPropsCustomPart();

if(docPropsCustomPart==null)

{

	System.out.println("No Document Custom Properties.");

}

else

{

	org.docx4j.docProps.custom.Properties customProps = (org.docx4j.docProps.custom.Properties)docPropsCustomPart.getJaxbElement();

	for (org.docx4j.docProps.custom.Properties.Property prop: customProps.getProperty() )

	{

		// At the moment, you need to know what sort of value it has.

		// Could create a generic Object getValue() method.

		if (prop.getLpwstr()!=null)

		{

			System.out.println(prop.getName() + " = " + prop.getLpwstr());

		}

		else

		{

			System.out.println(prop.getName() + ": \n " + XmlUtils.marshaltoString(prop, true, Context.jcDocPropsCustom));

		}

	}

}

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/featurescomparison/documents/accessdocproperties/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/accessdocproperties)

{{% alert color="primary" %}} 

For more details, visit [Working with Document Properties](/words/java/working-with-document/#workingwithdocument-workingwithdocumentproperties).

{{% /alert %}}
