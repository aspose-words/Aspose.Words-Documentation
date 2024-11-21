---
title: Add Watermark in Document
second_title: Aspose.Words for Java
articleTitle: Add Watermark in Document
linktitle: Add Watermark in Document
description: "Add a watermark into a document easily and fast instead of using docx4j."
type: docs
weight: 20
url: /java/add-watermark-in-document/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Add Watermark in Document

Sometimes you need to insert a watermark into a Word document, for instance if you would like to print a draft document or mark it as confidential.

In Microsoft Word, you can quickly insert a watermark using the Insert Watermark command. Not many people using this command realize that such “watermark” is just a shape with text inserted into a header or footer and positioned in the centre of the page.

While in Aspose.Words there is no single “Insert Watermark” command like in Microsoft Word, it is very easy to insert any shape or image into a header or footer and thus create a watermark of any imaginable type.

**Java**

{{< highlight csharp >}}
public static void main(String[] args) throws Exception
{
	Document doc = new Document(dataDir + "document.doc");
	String watermarkText = "CONFIDENTIAL";

	// Create a watermark shape. This will be a `WordArt` shape.
	// You are free to try other shape types as watermarks.
	Shape watermark = new Shape(doc, ShapeType.TEXT_PLAIN_TEXT);
	
	// Set up the text of the watermark.
	watermark.getTextPath().setText(watermarkText);
	watermark.getTextPath().setFontFamily("Arial");
	watermark.setWidth(500);
	watermark.setHeight(100);
	
	// Text will be directed from the bottom-left to the top-right corner.
	watermark.setRotation(-40);
	
	// Remove the following two lines if you need a solid black text.
	watermark.getFill().setColor(Color.GRAY);
 // Try LightGray to get more Word-style watermark
	watermark.setStrokeColor(Color.GRAY);
 // Try LightGray to get more Word-style watermark
	// Place the watermark in the page center.
	watermark.setRelativeHorizontalPosition(RelativeHorizontalPosition.PAGE);
	watermark.setRelativeVerticalPosition(RelativeVerticalPosition.PAGE);
	watermark.setWrapType(WrapType.NONE);
	watermark.setVerticalAlignment(VerticalAlignment.CENTER);
	watermark.setHorizontalAlignment(HorizontalAlignment.CENTER);

	// Create a new paragraph and append the watermark to this paragraph.
	Paragraph watermarkPara = new Paragraph(doc);
	watermarkPara.appendChild(watermark);
	
	// Insert the watermark into all headers of each document section.
	for (Section sect : doc.getSections())
	{
		// There could be up to three different headers in each section, since we want
		// the watermark to appear on all pages, insert into all headers.
		insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HEADER_PRIMARY);
		insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HEADER_FIRST);
		insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HEADER_EVEN);
	}
	doc.save(dataDir + "AsposeWatermark.doc");
	System.out.println("Done.");
}
private static void insertWatermarkIntoHeader(Paragraph watermarkPara, Section sect, int headerType) throws Exception
{
	HeaderFooter header = sect.getHeadersFooters().getByHeaderFooterType(headerType);
	if (header == null)
	{
		// There is no header of the specified type in the current section, create it.
		header = new HeaderFooter(sect.getDocument(), headerType);
		sect.getHeadersFooters().add(header);
	}

	// Insert a clone of the watermark into the header.
	header.appendChild(watermarkPara.deepClone(true));
}
{{< /highlight >}}

## Docx4j - Add Watermark in Document

Below example shows how a watermark can be added to document using docx4j library.

**Java**

{{< highlight csharp >}}
public static void main(String[] args) throws Exception
{
	// The image to add
	imageFile = new File(dataDir + "greentick.png" );

	// Save it to
	DOCX_OUT = dataDir + "OUT_WaterMarkPicture.docx";
	Docx4jAddWatermark sample = new Docx4jAddWatermark();
	sample.addWaterMark();
}
static ObjectFactory factory = Context.getWmlObjectFactory();
static File imageFile;
private byte[] image;
private WordprocessingMLPackage wordMLPackage;
public void addWaterMark() throws Exception
{
	image = this.getImage();
	wordMLPackage = WordprocessingMLPackage
			.createPackage();

	// A watermark is defined in the headers, which are in turn set in sectPr
	wordMLPackage.getMainDocumentPart().getContents().getBody().setSectPr(
			createSectPr() );
	File f = new File(DOCX_OUT);
	wordMLPackage.save(f);
}
private SectPr createSectPr() throws Exception {
	String openXML = "<w:sectPr xmlns:w=\"https://schemas.openxmlformats.org/wordprocessingml/2006/main\" xmlns:r=\"https://schemas.openxmlformats.org/officeDocument/2006/relationships\">"
			// Word adds the background image in each of 3 header parts
			+ "<w:headerReference r:id=\"" + createHeaderPart("even").getId() + "\" w:type=\"even\"/>"
			+ "<w:headerReference r:id=\"" + createHeaderPart("default").getId() + "\" w:type=\"default\"/>"
			+ "<w:headerReference r:id=\"" + createHeaderPart("first").getId() + "\" w:type=\"first\"/>"

			// Word adds empty footer parts when you create a watermark, but its not necessary
//	            + "<w:footerReference r:id=\"rId9\" w:type=\"even\"/>"
//	            + "<w:footerReference r:id=\"rId10\" w:type=\"default\"/>"
//	            + "<w:footerReference r:id=\"rId12\" w:type=\"first\"/>"
			+ "<w:pgSz w:h=\"15840\" w:w=\"12240\"/>"
			+ "<w:pgMar w:bottom=\"1440\" w:footer=\"708\" w:gutter=\"0\" w:header=\"708\" w:left=\"1440\" w:right=\"1440\" w:top=\"1440\"/>"
			+ "<w:cols w:space=\"708\"/>"
			+ "<w:docGrid w:linePitch=\"360\"/>"
		+"</w:sectPr>";
	return (SectPr)XmlUtils.unmarshalString(openXML);
}
private Relationship createHeaderPart(String nameSuffix) throws Exception {
	HeaderPart headerPart = new HeaderPart(new PartName("/word/header-" + nameSuffix + ".xml"));
	Relationship rel =  wordMLPackage.getMainDocumentPart().addTargetPart(headerPart);
	setHdr( headerPart);
	return rel;
}
private void setHdr(HeaderPart headerPart) throws Exception  {
	ImagePngPart imagePart = new ImagePngPart(new PartName("/media/background.png"));
	imagePart.setBinaryData(image);
	Relationship rel = headerPart.addTargetPart(imagePart, AddPartBehaviour.REUSE_EXISTING);
 // the one image is shared by the 3 header parts
	String openXML = "<w:hdr mc:Ignorable=\"w14 wp14\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"https://schemas.openxmlformats.org/wordprocessingml/2006/main\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:mc=\"https://schemas.openxmlformats.org/markup-compatibility/2006\" xmlns:r=\"https://schemas.openxmlformats.org/officeDocument/2006/relationships\">"
			+ "<w:p>"
				+ "<w:pPr>"
					+ "<w:pStyle w:val=\"Header\"/>"
				+"</w:pPr>"
				+ "<w:r>"
					+ "<w:rPr>"
						+ "<w:noProof/>"
					+"</w:rPr>"
					+ "<w:pict>"
						+ "<v:shapetype coordsize=\"21600,21600\" filled=\"f\" id=\"_x0000_t75\" o:preferrelative=\"t\" o:spt=\"75\" path=\"m<at:var at:name="4" />5l<at:var at:name="4" />11<at:var at:name="9" />11<at:var at:name="9" />5xe\" stroked=\"f\">"
							+ "<v:stroke joinstyle=\"miter\"/>"
							+ "<v:formulas>"
								+ "<v:f eqn=\"if lineDrawn pixelLineWidth 0\"/>"
								+ "<v:f eqn=\"sum @0 1 0\"/>"
								+ "<v:f eqn=\"sum 0 0 @1\"/>"
								+ "<v:f eqn=\"prod @2 1 2\"/>"
								+ "<v:f eqn=\"prod @3 21600 pixelWidth\"/>"
								+ "<v:f eqn=\"prod @3 21600 pixelHeight\"/>"
								+ "<v:f eqn=\"sum @0 0 1\"/>"
								+ "<v:f eqn=\"prod @6 1 2\"/>"
								+ "<v:f eqn=\"prod @7 21600 pixelWidth\"/>"
								+ "<v:f eqn=\"sum @8 21600 0\"/>"
								+ "<v:f eqn=\"prod @7 21600 pixelHeight\"/>"
								+ "<v:f eqn=\"sum @10 21600 0\"/>"
							+"</v:formulas>"
							+ "<v:path gradientshapeok=\"t\" o:connecttype=\"rect\" o:extrusionok=\"f\"/>"
							+ "<o:lock aspectratio=\"t\" v:ext=\"edit\"/>"
						+"</v:shapetype>"
						+ "<v:shape id=\"WordPictureWatermark835936646\" o:allowincell=\"f\" o:spid=\"_x0000_s2050\" style=\"position:absolute;margin-left:0;margin-top:0;width:467.95pt;height:615.75pt;z-index:-251657216;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin\" type=\"#_x0000_t75\">"
							+ "<v:imagedata blacklevel=\"22938f\" gain=\"19661f\" o:title=\"docx4j-logo\" r:id=\"" + rel.getId() + "\"/>"
						+"</v:shape>"
					+"</w:pict>"
				+"</w:r>"
			+"</w:p>"
		+"</w:hdr>";
		Hdr hdr = (Hdr)XmlUtils.unmarshalString(openXML);
		headerPart.setJaxbElement(hdr);
	}
private byte[] getImage() throws IOException {
	// Our utility method wants that as a byte array
	java.io.InputStream is = new java.io.FileInputStream(imageFile );
	long length = imageFile.length();

	// You cannot create an array using a long type.
	// It needs to be an int type.
	if (length > Integer.MAX_VALUE) {
		System.out.println("File too large!!");
	}
	byte[] bytes = new byte[(int)length];
	int offset = 0;
	int numRead = 0;
	while (offset < bytes.length
		   && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
		offset += numRead;
	}
	
	// Ensure all the bytes have been read in
	if (offset < bytes.length) {
		System.out.println("Could not completely read file "+imageFile.getName());
	}
	is.close();
	return bytes;
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/addwatermark)

{{% alert color="primary" %}}

For more details, visit [How to Add a Watermark to a Document](/words/java/working-with-watermark/).

{{% /alert %}}
