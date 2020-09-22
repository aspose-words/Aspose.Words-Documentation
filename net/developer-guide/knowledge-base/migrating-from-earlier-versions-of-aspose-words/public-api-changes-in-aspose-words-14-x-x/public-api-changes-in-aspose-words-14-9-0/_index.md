---
title: Public API Changes in Aspose.Words 14.9.0
type: docs
weight: 90
url: /net/public-api-changes-in-aspose-words-14-9-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.9.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **DrawingML now is a Composite Node**

DrawingML node is CompositeNode now. That is why VisitDrawingML method in DocumentVisitor was replaced with VisitDrawingMLStart and VisitDrawingMLEnd 

### **Extrusion Effect for DrawingML Supported.**

We have now added support of extrusion effect for DrawingML. To enable that effect setting of flag SaveOptions.DmlRenderingMode to DmlRenderingMode.DrawingML is required, by default SaveOptions.DmlRenderingMode is equal to DmlRenderingMode.Fallback.

### **LayoutEnumerator Supports Moving between Logical Siblings**

We have added two new members to LayoutEnumerator. It is now possible to move between logical siblings and thus find, for example, where paragraph is broken across pages.

### **Mail Merge Classes Moved to Aspose.Words.MailMerging Namespace**

We decided to move mail merge classes from Aspose.Words.Reporting to Aspose.Words.MailMerging namespace, our customers should not confuse these classes with the new reporting engine's ones which belong to Aspose.Words.Reporting namespace. By this reason our customers need to change using directives in their sources accordingly to be able to use new versions of Aspose.Words. This is an intentional breaking change.

### **New Reporting Engine**

This release includes the new reporting engine that supports LINQ Method Syntax in report templates.

The classes of the reporting engine are located in the Aspose.Words.Reporting namespace.
