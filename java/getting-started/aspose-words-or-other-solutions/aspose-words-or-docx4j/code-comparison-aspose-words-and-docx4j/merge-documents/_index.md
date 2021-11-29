---
title: Merge Documents
description: "Aspose.Words for Java allows you to merge documents easily and fast instead of using docx4j."
type: docs
weight: 90
url: /java/merge-documents/
---

{{% alert color="primary" %}} 

You can try to merge documents and view the results online at this link:

<https://products.aspose.app/words/merger>

{{% /alert %}} 

## Aspose.Words - Merge Documents

To append documents using Aspose.Words, simply invoke the appendDocument() method of Document class and specify the second document to append at end.

**Java**

{{< highlight csharp >}}
Document doc1 = new Document(dataDir + "doc1.doc");
Document doc2 = new Document(dataDir + "doc2.doc");
doc1.appendDocument(doc2, ImportFormatMode.KEEP_SOURCE_FORMATTING);
{{< /highlight >}}

## docx4j - Merge Documents

This sample demonstrates how the MergeDocx utility can be used to merge docx documents.

The MergeDocx utility is a paid extension to docx4j. Purchases of this extension support the docx4j project. 

@see <http://www.docx4java.org/blog/2010/11/merging-word-documents> for more info, or @see <http://www.plutext.com>.

To run the utility, you simply pass it a list of the docx you want to merge; it returns a new pkg containing the merged documents.

**Java**

{{< highlight csharp >}}
final static String[] sourceDocxNames = { "doc1.docx", "doc2.docx"};
static boolean save = true;
static String outputfilepath = dataDir +"OUT_MergeDocx.docx";
/**
 * @param args
 * @throws Docx4JException
 */
public static void main(String[] args) throws Docx4JException {
	// Create list of docx packages to merge
	List<WordprocessingMLPackage> wmlPkgList=new ArrayList<WordprocessingMLPackage>();
	for (int i=0; i<sourceDocxNames.length; i++){
		String filename = dataDir + sourceDocxNames[i] ;
		System.out.println("Loading " + filename);
		wmlPkgList.add(WordprocessingMLPackage
				.load(new java.io.File(filename)));
	}
	try {
		// Use reflection, so docx4j can be built
		// by users who don't have the MergeDocx utility
		Class<?> documentBuilder = Class.forName("com.plutext.merge.DocumentBuilder");
		//Method method = documentBuilder.getMethod("merge", wmlPkgList.getClass());
		Method[] methods = documentBuilder.getMethods();
		Method method = null;
		for (int j=0; j<methods.length; j++) {
			System.out.println(methods[j].getName());
			if (methods[j].getName().equals("merge")) {
				method = methods[j];
				break;
			}
		}
		if (method==null) throw new NoSuchMethodException();
		WordprocessingMLPackage resultPkg = (WordprocessingMLPackage)method.invoke(null, wmlPkgList);
		if (save) {
			SaveToZipFile saver = new SaveToZipFile(resultPkg);
			saver.save(outputfilepath);
			System.out.println("Generated " + outputfilepath);
		} else {
			String result = XmlUtils.marshaltoString(resultPkg.getMainDocumentPart().getJaxbElement(), true, true);
			System.out.println(result);
		}
	} catch (SecurityException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		extensionMissing(e);
	} catch (IllegalArgumentException e) {
		e.printStackTrace();
	} catch (NoSuchMethodException e) {
		extensionMissing(e);
	} catch (IllegalAccessException e) {
		e.printStackTrace();
	} catch (InvocationTargetException e) {
		e.printStackTrace();
	}
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/mergedocs)

For more details, visit [Appending Documents](/words/java/insert-and-append-documents/).
