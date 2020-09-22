---
title: Public API Changes in Aspose.Words 11.9.0
type: docs
weight: 20
url: /java/public-api-changes-in-aspose-words-11-9-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 11.9.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

#### **Support for SVG Image Format in the Model**

Scalable Vector Graphics images can now be inserted into a document using the [DocumentBuilder.InsertImage]() and [ImageData.SetImage]() methods. When such an image is inserted it is converted into raster form in the model.

This format is still unsupported when loading HTML or inserting HTML content using [DocumentBuilder.InsertHtml]().

#### **Support for Locked Fields**

In a Microsoft Word document a field can be locked to restrict the field result being changed when fields are updated. This feature is now supported by Aspose.Words 11.9.0. Calling [Document.UpdateFields]() or any other method that update fields will not affect fields with this attribute present.

The public API also exposes locked fields through the [Field.IsLocked]() and [FieldStart.IsLocked]() properties. To lock or unlock an existing field in a document first obtain the FieldStart node and then modify **FieldStart.IsLocked**.

#### **ASK and FILLIN Fields are now Supported**

An interaction with the user for these fields during field update is provided through the [FieldOptions.UserPromptRespondent]() property. Pass a class implementing the [IFieldUserPromptRespondent]() interface to this property to provide feedback. By default the value of this property is null which means none of the ASK and FILLIN fields located in the document are updated.

The **IFieldUserPromptRespondent** interface contains only one method named "Respond" which can be implemented in various ways. Normally this method will prompt the user with a question and return the user's response to be used in the field.

#### **Added a Save Option to Control the Color Mode Used when Rendering Images**

The [ImageSaveOptions.ImageColorMode]() property is made public to control rendering a document to image in black and white and grayscale color modes.

#### **Improved Methods of Specifying Image Size during Mail Merge**

In Aspose.Words 11.9 the ability of the specifying image size for images inserted during mail merge. It can be accomplished through defining a size in the field code in the template or by using new properties [ImageFieldMergingCallback]().

The following demonstrates how to set the size for the merged image by modifying the template and adding extra parameters to the field code of the field:

![todo:image_alt_text](public-api-changes-in-aspose-words-11-9-0_1.png)

The same functionality can also be achieved in the API by using **ImageFieldMergingCallback**. The **ImageFieldMergingArgs.ImageHeight** and **ImageFieldMergingArgs.ImageWidth** properties are used to set the image size.
