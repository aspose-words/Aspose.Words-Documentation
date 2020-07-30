---
title: Aspose.Words .Net 3.5.0.0 New Release Release Notes
type: docs
weight: 50
url: /net/aspose-words-net-3-5-0-0-new-release-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words .Net 3.5.0.0 New Release](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-.net-3.5.0.0-new-release/)

{{% /alert %}} 

Dear Customers,

We have released Aspose.Words 3.5

Please note has been renamed to .

If you are upgrading from Aspose.Word, you need to remove the reference to Aspose.Word.dll and add a reference to Aspose.Words.dll. Also you need to change all "using" or "imports" namespace Aspose.Word to Aspose.Words in your code.

There used to be two edition types: Professional and Enterprise. This has been changed to one edition type Professional.

Customers who had Professional edition will automatically get access to all features that were previously available in the Enterprise edition type when they upgrade.

- Ability to choose printer for DocumentRenderer.Print
  Export of more gray percentage shading patterns to PDF. 
- Some pictures appear mangled
  Background in cells is lost 
  Exported column width incorrect. 
  3D border is output like a double border. 
  Saving document in AsposePdf format triggers exception. 
  Macro checkboxes are not exported to PDF. 
  Hanging indentation with tab and newline are not converted to PDF properly. 
  Tab in a table is ignored during PDF export. 
  DefaultCellPaddingLeft and DefaultCellPaddingRight sometimes have no effect. 
  Acrobat Reader reports error on some documents. 
  Word to Pdf conversion fails with 'Image height is too large ...' error. 
- Allowed "_" to be used instead of ":" in TableStart:MyTable.
  ImportNode loses bullet formatting for paragraph styles with list formatting. 
  Setting Bookmark.Text property to string containing CRLF characters causes crash. 
  Stream error while openning the document. 
  Unexpected measurement units exception when openning document. 
  Going Back to or Refreshing the main page in Aspose.Word.Demos is not nice. 
  MSWord document cannot be opened by aspose after calling Aspose.Save(). 
