---
title: Remove Header and Footer from Documents
type: docs
weight: 30
url: /java/remove-header-and-footer-from-documents/
---

## Aspose.Words - Remove Header Footer from Documents

Each section in a document can have up to three headers and up to three footers (for first, even and odd pages). If you want to delete all headers footers in a document you need to loop through all sections and remove every header and footer node.

**Java**

{{< highlight csharp >}}
Document doc = new Document(dataDir + "AsposeHeaderFooter.docx");
for (Section section : doc.getSections())
{
	// Up to three different header footers are possible in a section (for first, even and odd pages).
	// We check and delete all of them.
	HeaderFooter header;
	HeaderFooter footer;
	header = section.getHeadersFooters().getByHeaderFooterType(HeaderFooterType.HEADER_FIRST);
	footer = section.getHeadersFooters().getByHeaderFooterType(HeaderFooterType.FOOTER_FIRST);
	if (header != null)
		header.remove();
	if (footer != null)
		footer.remove();

	// Primary header and footer is used for odd pages.
	header = section.getHeadersFooters().getByHeaderFooterType(HeaderFooterType.HEADER_PRIMARY);
	footer = section.getHeadersFooters().getByHeaderFooterType(HeaderFooterType.FOOTER_PRIMARY);
	if (header != null)
		header.remove();
	if (footer != null)
		footer.remove();
	header = section.getHeadersFooters().getByHeaderFooterType(HeaderFooterType.HEADER_EVEN);
	footer = section.getHeadersFooters().getByHeaderFooterType(HeaderFooterType.FOOTER_EVEN);
	if (header != null)
		header.remove();
	if (footer != null)
		footer.remove();
}
{{< /highlight >}}

## Docx4j - Remove Header Footer from Documents

Examples shows how header and footer can be removed using docx4j library.

**Java**

{{< highlight csharp >}}
public static void main(String[] args) throws Exception
{
	 // The path to the documents directory.
        String dataDir = Utils.getDataDir(Docx4jHeaderFooterRemove.class);

	// A docx or a dir containing docx files
	String inputpath = dataDir + "Docx4jHeaderFooter.docx";
	StringBuilder sb = new StringBuilder();
	File dir = new File(inputpath);
	if (dir.isDirectory()) {
		String[] files = dir.list();
		for (int i = 0; i<files.length; i++  ) {
			if (files[i].endsWith("docx")) {
				sb.append("\n\n" + files[i] + "\n");
				removeHFFromFile(new java.io.File(inputpath + "/" + files[i]));
			}
		}
	} else if (inputpath.endsWith("docx")) {
		sb.append("\n\n" + inputpath + "\n");
		removeHFFromFile(new java.io.File(inputpath ));
	}
	System.out.println(sb.toString());
}
public static void removeHFFromFile(File f) throws Exception {
	WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage
			.load(f);
	MainDocumentPart mdp = wordMLPackage.getMainDocumentPart();

	// Remove from sectPr
	SectPrFinder finder = new SectPrFinder(mdp);
	new TraversalUtil(mdp.getContent(), finder);
	for (SectPr sectPr : finder.getSectPrList()) {
		sectPr.getEGHdrFtrReferences().clear();
	}

	// Remove rels
	List<Relationship> hfRels = new ArrayList<Relationship>();
	for (Relationship rel : mdp.getRelationshipsPart().getRelationships().getRelationship() ) {
		if (rel.getType().equals(Namespaces.HEADER)
				|| rel.getType().equals(Namespaces.FOOTER)) {
			hfRels.add(rel);
		}
	}
	for (Relationship rel : hfRels ) {
		mdp.getRelationshipsPart().removeRelationship(rel);
	}
	wordMLPackage.save(f);
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/headerfooter/removeheaderfooter)

{{% alert color="primary" %}} 

For more details, visit [How to Remove Footers but Leave Headers Intact](/words/java/working-with-headers-and-footers/#workingwithheadersandfooters-removefootersbutleaveheadersintact).

{{% /alert %}}
