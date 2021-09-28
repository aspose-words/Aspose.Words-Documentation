---
title: Licensing and Subscription
description: "Aspose.Words for .NET provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation using Licensing and Subscription policies."
type: docs
weight: 80
url: /net/licensing/
---

Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, Aspose.Words provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{% alert color="primary" %}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.aspose.com/policies) section.

{{% /alert %}}

## Free Trial or Temporary License

Aspose.Words is incredible software that developers can try before purchasing.

### Free Trial

The evaluation version is the same as the purchased one – the [Trial version](https://downloads.aspose.com/words) simply becomes licensed when you add many lines of code to apply the license.

The Trial version of Aspose.Words without the specified license provides full product functionality, but inserts an evaluative watermark at the top of the document upon loading and saving and limits the maximum document size to several hundred paragraphs.

### Temporary License

If you wish to test Aspose.Words without the limitations of the Trial version, you can also request a 30-day Temporary License. For more details, see the ["Get a Temporary License"](https://purchase.aspose.com/temporary-license) page.

## Purchased License

After purchase, you need to apply the license file or include the license file as an embedded resource. This section describes options of how this can be done, and also comments on some common questions.

{{% alert color="primary" %}}

You need to set the license:

* only once per application domain

* before using any other Aspose.Words classes

{{% /alert %}}

{{% alert color="primary" %}}

You can find pricing information on the [“Pricing Information”](https://purchase.aspose.com/pricing/words/family) page.

{{% /alert %}}

### License Applying Options

Licenses can be applied from various locations:

* Explicit path
* The folder containing the *Aspose.Words.dll* file
* The folder containing the assembly that called *Aspose.Words.dll*
* The folder containing the entry assembly (your *.exe*)
* An embedded resource in the assembly is called *Aspose.Words.dll*
* As a Metered License – a new licensing mechanism

When you reference *Aspose.Words.dll* in the application, the library is copied to your output directory (unless *Copy Local* in the properties for that entry is set to false). Often the easiest way to set a license is to place the license file in the same folder as *Aspose.Words.dll* and specify just the filename without the path.

{{% alert color="primary" %}}

Use the [SetLicense](https://apireference.aspose.com/net/words/aspose.words/license/methods/setlicense/index) method to license a component.

Calling **SetLicense** several times is not harmful, it just wastes processor time.

{{% /alert %}}

#### Apply License Using a File or Stream Object

When developing your application, call **SetLicense** in your startup code before using Aspose.Words classes.

##### Load a License from a File

Using the [SetLicense](https://apireference.aspose.com/words/net/aspose.words.license/setlicense/methods/1) method, you can try to find the license file in the embedded resources or assembly folders for further use.

The following code example shows how to initialize a license from a folder:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Quick-Start-ApplyLicenseFromFile-ApplyLicenseFromFile.cs" >}}

##### Load a License from a Stream Object

The following code example demonstrates how to initialize a license from a stream using another [SetLicense](https://apireference.aspose.com/words/net/aspose.words/license/methods/setlicense) method:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Quick-Start-ApplyLicenseFromStream-ApplyLicenseFromStream.cs" >}}

#### Include the License File as an Embedded Resource

A neat way to package a license with your application and make sure it will not be lost is to include it as an embedded resource into one of the assemblies that call Aspose.Words. To include a file as an embedded resource, follow these steps:

1. In Visual Studio, include the .lic file into the project using the “**File | Add Existing Item…**” menu.
2. Select the file in the Solution Explorer and set “**Build Action to Embedded Resource”** in the Properties window.
3. In your code, invoke **SetLicense** that passes only the short name of the resource file.

#### Apply Metered License

Aspose.Words enables developers to apply a metered key. This is a new licensing mechanism.

The new licensing mechanism will be used along with the existing licensing method. Those customers who want to be billed based on the use of API features can use the Metered Licensing.

After completing all the necessary steps to obtain this type of license, you will receive the keys, not the license file. This metered key can be applied using the [Metered](https://apireference.aspose.com/net/words/aspose.words/metered) class specially introduced for this purpose.

The following code example shows how to set metered public and private keys:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Quick-Start-ApplyMeteredLicense-ApplyMeteredLicense.cs" >}}

{{% alert color="primary" %}}

Please note that you must have a stable Internet connection for the correct use of the Metered license, since the Metered mechanism requires the constant interaction with our services for correct calculations. For more details, refer to the [“Metered Licensing FAQ”](https://purchase.aspose.com/faqs/licensing/metered) section.

{{% /alert %}}

### Changing the License File Name

The license filename does not have to be “Aspose.Words.LIC”. You can rename it to your liking and use that name when setting a license in your application.

### “Cannot find license filename” Exception

When you purchase and download a license, the Aspose website names the license file *"Aspose.Words.LIC"*. You download the license file using your browser. In this case, some browsers recognize the license file as XML and append the .xml extension to it, so the full file name on your computer becomes *"Aspose.Words.lic.XML"*.

When Microsoft Windows is configured to hide extensions for known file types (unfortunately, this is the default in most Windows installations), the license file will appear as *"Aspose.Words. LIC"* in Windows Explorer. You will probably think that this is the real file name and call **SetLicense** passing it *"Aspose.Words.LIC"*, but there is no such file, hence the exception.

To solve the problem, rename the file to remove the invisible .xml extension. We also recommend you disable the "hide extensions" option in Microsoft Windows.

## Using Multiple Aspose Products

If you use multiple Aspose products in your application, such as Aspose.Words and Aspose.Cells, here are a few useful tips:

* Set the License for each Aspose product separately. Even if you have a single license file for all components, for example, "Aspose.Total.lic", you still need to call **SetLicense** separately for each Aspose product that you use in your application.
* Use the Fully Qualified License Class Name. Each Aspose product has a **License** class in its own namespace. For example, Aspose.Words has [Aspose.Words.License](https://apireference.aspose.com/words/net/aspose.words/license) and Aspose.Cells has Aspose.Cells.License class. Using the fully qualified class name enables you to avoid confusion as to which license applies to which product.
