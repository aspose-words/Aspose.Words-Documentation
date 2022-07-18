---
title: Licensing and Subscription
second_title: Aspose.Words for Java
articleTitle: Licensing and Subscription
linktitle: Licensing and Subscription
description: "Aspose.Words for Java provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation using Licensing and Subscription policies."
type: docs
weight: 60
url: /java/licensing/
aliases: [/java/license-aspose-words/]
---

Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, Aspose.Words provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{% alert color="primary" %}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.aspose.com/policies) section.

{{% /alert %}}

## Free Trial or Temporary License

Aspose.Words is incredible software that developers can try before purchasing. You can easily download/install Aspose.Words for Java and Aspose.Words for Android via Java [from Maven](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/) for evaluation.

### Free Trial

The evaluation version is the same as the purchased one – the Trial version simply becomes licensed when you add a few lines of code to apply the license.

The Trial version of Aspose.Words for Java and Aspose.Words for Android via Java without the specified license provides full product functionality, but inserts an evaluative watermark at the top of the document upon loading and saving and limits the maximum document size to a few hundred paragraphs.

### Temporary License

If you wish to test Aspose.Words for Java and Aspose.Words for Android via Java without the limitations of the Trial version, you can also request a 30-day Temporary License. For more details, see the ["Get a Temporary License"](https://purchase.aspose.com/temporary-license) page.

## Purchased License

After purchase, you need to apply the license file or include the license file as an embedded resource. This section describes options of how this can be done, and also comments on some common questions.

{{% alert color="primary" %}}

A license is a plain text XML file that contains details such as product name, number of developers licensed, subscription expiry date, and so on.

The file is digitally signed, so do not modify the file. Even inadvertent addition of an extra line break into the file will invalidate it.

{{% /alert %}}

{{% alert color="primary" %}}

You need to set the license:

* only once per application domain
* before using any other Aspose.Words classes

{{% /alert %}}

{{% alert color="primary" %}}

You can find pricing information on the [“Pricing Information”](https://purchase.aspose.com/pricing/words/family) page.

{{% /alert %}}

### Protecting Your Purchased License

After purchasing a license, you need to carefully read the information on page ["Protecting Your Purchased License"](https://purchase.aspose.com/orders/protecting-your-license-file) to protect your license file. Please note that this page is available for viewing only if you have a paid license.

### License Applying Options

Licenses can be applied from various locations:

* Explicit path
* The folder containing the *Aspose.Words JAR* file
* An embedded resource in the JAR is called *Aspose.Words JAR*
* As a Metered License – a new licensing mechanism

Often the easiest way to set a license is to place the license file in the same folder as *Aspose.Words JAR* and specify just the filename without the path.

{{% alert color="primary" %}}

Use the [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license#setLicense(java.io.InputStream)) method to license a component.

Calling **SetLicense** multiple times is not harmful, it just wastes processor time.

{{% /alert %}}

#### Apply License Using a File or Stream Object

{{% alert color="primary" %}}

Call **SetLicense** in your startup code before using Aspose.Words classes.

{{% /alert %}}

When developing a class library, you can call **SetLicense** from the static constructor of your class that uses Aspose.Words. The static constructor will be executed prior to instantiating your class to ensure that the Aspose.Words license is installed correctly.

##### Load a License from a File

Using the [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license#setLicense(java.lang.String)) method, you can try to find the license file in the embedded resources or folder that contain the JARs of your application for further use.

The following code example shows how to initialize a license from a folder:

{{< highlight csharp >}}
com.aspose.words.License license = new com.aspose.words.License();
license.setLicense("Aspose.Words.Java.lic");
{{< /highlight >}}

##### Load a License from a Stream Object

The following code example shows how to initialize a license from a stream using another [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license#setLicense(java.io.InputStream)) method:

{{< highlight csharp >}}
com.aspose.words.License license = new com.aspose.words.License();
license.setLicense(new java.io.FileInputStream("Aspose.Words.Java.lic"));
{{< /highlight >}}

#### Include the License File as an Embedded Resource

A neat way to package a license with your application and make sure it will not be lost is to include it as an embedded resource. You can simply copy the LIC file to your project's resource folder.

Rebuilding the project should embed the .lic file into application .jar file. After that, you can apply for a license using the following code:

{{< highlight csharp >}}
License lic = new License();
lic.setLicense(Program.class.getResourceAsStream("Aspose.Words.Java.lic"));
{{< /highlight >}}

#### Apply Metered License

Aspose.Words allows developers to apply a metered key. This is a new licensing mechanism.

The new licensing mechanism will be used along with the existing licensing method. Those customers who want to be billed based on the use of API features can use the Metered Licensing.

After completing all the necessary steps to obtain this type of license, you will receive the keys, not the license file. This metered key can be applied using the [Metered](https://reference.aspose.com/words/java/com.aspose.words/Metered) class specially introduced for this purpose.

The following code example shows how to set metered public and private keys:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-ApplyLicense-ApplyMeteredLicense.java" >}}

{{% alert color="primary" %}}

Please note that you must have a stable Internet connection for the correct use of the Metered license, since the Metered mechanism requires the constant interaction with our services for correct calculations. 

For more details, refer to the [“Metered Licensing FAQ”](https://purchase.aspose.com/faqs/licensing/metered) section.

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
* Use the Fully Qualified License Class Name. Each Aspose product has a License class in its own namespace. For example, Aspose.Words has **com.aspose.words.License** and Aspose.Cells has com.aspose.cells.License class. Using the fully qualified class name allows you to avoid confusion as to which license applies to which product.
