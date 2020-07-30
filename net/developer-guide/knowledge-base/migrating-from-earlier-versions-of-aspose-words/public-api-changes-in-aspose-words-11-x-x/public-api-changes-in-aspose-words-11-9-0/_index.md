---
title: Public API Changes in Aspose.Words 11.9.0
type: docs
weight: 20
url: /net/public-api-changes-in-aspose-words-11-9-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 11.9.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
#### **Support for SVG Image Format in the Model**
Scalable Vector Graphics images can now be inserted into a document using the [DocumentBuilder.InsertImage](/pages/createpage.action?spaceKey=wordsnet&title=InsertImage+Method&linkCreation=true&fromPageId=2589107) and [ImageData.SetImage](/pages/createpage.action?spaceKey=wordsnet&title=SetImage+Method&linkCreation=true&fromPageId=2589107) methods. When such an image is inserted it is converted into raster form in the model.

This format is still unsupported when loading HTML or inserting HTML content using [DocumentBuilder.InsertHtml](/pages/createpage.action?spaceKey=wordsnet&title=InsertHtml+Method&linkCreation=true&fromPageId=2589107).
#### **Support for Locked Fields**
In a Microsoft Word document a field can be locked to restrict the field result being changed when fields are updated. This feature is now supported by Aspose.Words 11.9.0. Calling [Document.UpdateFields](/pages/createpage.action?spaceKey=wordsnet&title=UpdateFields+Method&linkCreation=true&fromPageId=2589107) or any other method that update fields will not affect fields with this attribute present.

The public API also exposes locked fields through the [Field.IsLocked](/pages/createpage.action?spaceKey=wordsnet&title=IsLocked+Property&linkCreation=true&fromPageId=2589107) and [FieldStart.IsLocked](/pages/createpage.action?spaceKey=wordsnet&title=IsLocked+Property&linkCreation=true&fromPageId=2589107) properties. To lock or unlock an existing field in a document first obtain the FieldStart node and then modify **FieldStart.IsLocked**.
#### **ASK and FILLIN Fields are now Supported**
An interaction with the user for these fields during field update is provided through the [FieldOptions.UserPromptRespondent](/pages/createpage.action?spaceKey=wordsnet&title=UserPromptRespondent+Property&linkCreation=true&fromPageId=2589107) property. Pass a class implementing the [IFieldUserPromptRespondent](/pages/createpage.action?spaceKey=wordsnet&title=IFieldUserPromptRespondent+Interface&linkCreation=true&fromPageId=2589107) interface to this property to provide feedback. By default the value of this property is null which means none of the ASK and FILLIN fields located in the document are updated.

The **IFieldUserPromptRespondent** interface contains only one method named "Respond" which can be implemented in various ways. Normally this method will prompt the user with a question and return the user's response to be used in the field.
#### **Improved Methods of Specifying Image Size during Mail Merge**
In Aspose.Words 11.9 the ability of the specifying image size for images inserted during mail merge. It can be accomplished through defining a size in the field code in the template or by using new properties [ImageFieldMergingCallback](/pages/createpage.action?spaceKey=wordsnet&title=ImageFieldMergingCallback+Property&linkCreation=true&fromPageId=2589107).

The following demonstrates how to set the size for the merged image by modifying the template and adding extra parameters to the field code of the field:

![todo:image_alt_text](public-api-changes-in-aspose-words-11-9-0_1.png)

The same functionality can also be achieved in the API by using **ImageFieldMergingCallback**. The **ImageFieldMergingArgs.ImageHeight** and **ImageFieldMergingArgs.ImageWidth** properties are used to set the image size.
