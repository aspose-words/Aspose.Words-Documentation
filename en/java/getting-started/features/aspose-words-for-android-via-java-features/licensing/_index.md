---
title: Licensing
second_title: Aspose.Words for Java
articleTitle: Licensing
linktitle: Licensing
description: "Licensing Aspose.Words for Android via Java."
type: docs
weight: 60
url: /java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, Aspose.Words provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{% alert color="primary" %}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the [Purchase Policies and FAQ](https://purchase.aspose.com/policies/) section.

{{% /alert %}}

## Free Trial or Temporary License

Aspose.Words is incredible software that developers can try before purchasing. You can easily download/install Aspose.Words for Java and Aspose.Words for Android via Java [from the download page](https://releases.aspose.com/words/androidjava/) for evaluation.

The evaluation version is the same as the purchased one – the Trial version simply becomes licensed when you add a few lines of code to apply the license.

{{% alert color="primary" %}}

Learn more details about the Free Trial or Temporary License for Aspose.Words for Android via Java on [the Licensing and Subscription page](/words/java/licensing/).

{{% /alert %}}

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

You can find pricing information on the [Pricing Information](https://purchase.aspose.com/pricing/words/family/) page.

{{% /alert %}}

### Protecting Your Purchased License

After purchasing a license, you need to carefully read the information on page [Protecting Your Purchased License](https://purchase.aspose.com/orders/protecting-your-license-file) to protect your license file. Please note that this page is available for viewing only if you have a paid license.

### License Applying Options

Licenses can be applied from various locations:

* Explicit path
* An embedded resource
* As a Metered License – a new licensing mechanism

#### Loading the License file

In Aspose.Words for Android via Java, the license can be [embedded as a resource](/words/java/licensing/), or loaded from a stream:

1. Put the license file at any location on **/mnt/sdcard/**.
1. Create a stream that references file.
1. Pass the stream (containing the license file) into the `SetLicense` method.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Applying a License from an Embedded Resource. To access the license as a resource by name from an Android package file:

1. Add the license file as a resource to your application's **res/raw** folder.
   The license file should be visible in the **res/raw** folder.
1. Access/load the license from the resource with the following code sample.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Apply Metered License

Aspose.Words allows developers to to apply metered key. It is a new licensing mechanism. The new licensing mechanism will be used along with existing licensing method. Those customers who want to be billed based on the usage of the API features can use the metered licensing.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Changing the License File Name

The license file name does not have to be 'Aspose.Words.Android.Java.lic'. You can rename it to anything you like and use that name when calling `License.SetLicense`.

### Exception - Cannot find license filename

When you download a license you've bought, the license file is named **Aspose.Words.Android.Java.lic** by default. The license file is downloaded through your browser and some browsers recognize the license file as XML and append an .xml extension to the name. The downloaded file becomes **Aspose.Words.Android.Java.lic.XML**.

When Microsoft Windows is configured to hide extensions of known file types (unfortunately this is default in most Windows installations), the license file is listed as **Aspose.Words.Android.Java.lic** in Windows Explorer. It looks like the expected file name. If you call `License.SetLicense` and pass 'Aspose.Words.Android.Java.lic', you'll see and exception because there is no such file. 

To solve the problem, rename the file to remove the invisible .xml extension. We recommend that you disable the "hide extensions" option in Microsoft Windows.

## Using Multiple Aspose Products

If you use several Aspose products in an application, for example Aspose.Words and `Aspose.Cells`, here are a few useful tips.

- Set the license for each Aspose product separately.
  Even if you have a single license file for all components, for example 'Aspose.Total.Android.Java.lic', you still need to call the `License.SetLicense` method separately for each Aspose product.
- Use fully qualified License class name.
  Each Aspose product has a `License` class in its namespace. For example, Aspose.Words has com.aspose.words.License and `Aspose.Cells` has com.aspose.cells.License class. Using the fullyqualified class name allows you to avoid any confusion about which license is applied to which product.
