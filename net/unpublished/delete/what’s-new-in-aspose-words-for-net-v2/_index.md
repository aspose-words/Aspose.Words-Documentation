---
title: What’s new in Aspose.Words for .NET v2
type: docs
weight: 20
url: /net/what’s-new-in-aspose-words-for-net-v2/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.
## **Aspose.Words for .NET 20.4**
Aspose.Words 20.4 introduces support for .NET 4.6.1, 3D Effects Rendering through the OpenGL feature in two modes – basic or advanced. The API is enhanced for more flexible and convenient development.
### **New platform support: .NET 4.6.1**
Starting from 20.4 version, Aspose.Words has a dedicated release for .NET 4.6.1 framework.

DD: What is the purpose of this phrase? -> Like .NET Standard 2.0, it supports reading PDF documents. Now PDF import works in your favorite .NET applications.

MG: To explain what benefits and convenience are now available to users. If this is unnecessary, we can remove it.
### **Graphics**
#### **3D Effects Rendering Support**
The first version of 3D Effects Rendering through the OpenGL feature has been released. You can select one of two rendering modes for 3D shape effects rendering – “Basic mode” or “Advanced mode”:

- Basic mode – the default lightweight and stable rendering, based on the internal engine, but without advanced effects.
- Advanced mode – rendering of an extended list of special effects, including advanced 3D effects, such as bevels, lighting, and materials, via OpenGL. We position this feature as experimental since it is under development, and there is a number of limitations for advanced mode.
#### **More chart customization**
The API for chart data labels and series has expanded. Now you have more control over data labels, series, and their formatting.
#### **New image fidelity options for PDF format**
The [InterpolateImages](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/interpolateimages) interpolation property indicates that a PDF Reader (for example, Acrobat Reader), should smooth the image to make it look more "attractive". For different PDF Readers, this property can work in different ways: some readers may choose to not implement this PDF feature, others use any specific implementation of interpolation that they wish.
Using the *InterpolateImages* property is relevant if the resolution of a source image is significantly lower than the resolution of the output device.
### **Search and Compare**
- The [Granularity](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/granularity) option, allowing the customer to specify comparison granularity, has been added. This feature allows you to specify the exact granularity of changes to track when comparing two documents.
- Search options are extended. The *FindReplaceOptions* class has been extended with the new [UseSubstitutions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/usesubstitutions) property. Using this option, you can enable the use of substitutions in the replacement pattern. This makes easy to use part or whole match when replacing.
### **Other**
The ability to change Asian paragraph spacing and indents through the public API has been added. This is the next step of Chinese language-specific Paragraph formatting improvement.

{{% alert color="primary" %}} 

Learn more about [Aspose.Words for .NET 20.4 Release Notes](/words/net/aspose-words-for-net-20-4-release-notes/).

{{% /alert %}} 
## **Aspose.Words for .NET 20.3**
Aspose.Words 20.3 introduces support of separate DLLs for Xamarin.Android, Xamarin.Mac and Xamarin.iOS, as well as huge performance and memory improvements. The API is enhanced for more flexible and convenient development.
### **Xamarin Support Changes**
Starting with Aspose.Words 20.3, Xamarin support has changed. In earlier versions, we provided separate DLLs for Xamarin.Android, Xamarin.Mac and Xamarin.iOS. Now Xamarin developers can use Aspose.Words for .NET Standard in all mentioned platforms.
According to the .NET Standard documentation, Aspose.Words for .NET Standard 2.0 can be used with Xamarin.iOS 10.14 or newer, Xamarin.Mac 3.8 or newer, and with Xamarin.Android 8.0 or newer.
### **Performance and Memory Improvements**
We released Aspose.Words for .NET and, as always, Aspose.Words for Java almost at the same time. And we are pleased to present the huge performance and memory improvements in Aspose.Words for Java 20.3 due to the *NodeCollectionEnumerator* algorithm optimization, removing the *Ref<T>* objects creation from nested cycles, and Blank documents loading optimization using *arraycopy* for small arrays.
### **Search options**
Search options are extended. The functionality of the *FindReplaceOptions* class becomes more flexible to serve your needs. It is now possible to ignore text inside revisions and fields.
### **Other**
A new public property [UpdateLastPrintedProperty](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/updatelastprintedproperty) has been added. Using this property, you can control when to update *LastPrintedProperty*, for example, before printing.

Learn more about [Aspose.Words for .NET 20.3 Release Notes](/words/net/aspose-words-for-net-20-3-release-notes/).
