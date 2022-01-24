---
title: Licensing
description: "Licensing Aspose.Words for Android via Java."
type: docs
weight: 50
url: /java/licensing-android/
---

## Evaluate Aspose.Words

Make sure to take advantage of the free Aspose.Words for Android via Java evaluation: it has no time limit, and comes with free technical support. We encourage developers to evaluate our products before buying so you know that the product will do what you want it to do.

The evaluation and the paid versions of Aspose.Words for Android via Java use the same download. Simply [download Aspose.Words for Android via Java](https://downloads.aspose.com/words/androidjava) from the download page, [install it](/words/java/installation/) and it works in evaluation mode. Evaluation mode inserts an evaluation watermark at the top of the document on open and save, and limits the maximum document size to several hundred paragraphs. When you have bought a license, simply reference the license in the code to apply it. If you want to test Aspose.Words without the evaluation version limitations, [request a 30-day temporary license](https://purchase.aspose.com/temporary-license).

![licensing-aspose-words-android](licensing-1.png)

## Applying a License

Once you are happy with your evaluation of Aspose.Words, [purchase a license](https://purchase.aspose.com/buy) at the Aspose website. Make yourself familiar with the different [license types](https://purchase.aspose.com/policies/license-types/) offered. If you have any questions, do not hesitate to [contact the Aspose sales team](https://about.aspose.com/contact). Every Aspose license carries a one-year subscription for free upgrades to any new versions or fixes that come out during this time. Technical support is free and unlimited and provided both to licensed and evaluation users.

The license is a plain text XML file that contains details such as the product name, number of licensed developers, subscription expiry date and so on. The file is digitally signed, so do not modify the file: even adding an extra line break into the file will invalidate it. You need to set a license before performing any operations with documents. Make sure you do this before creating a Document object. You are only required to [set a license once per application or process](/words/java/licensing/#licensing-whentoapplyalicense).

### Loading the License file

In Aspose.Words for Android via Java, the license can be [embedded as a resource](/words/java/licensing/), or loaded from a stream:

1. Put the license file at any location on **/mnt/sdcard/**.
1. Create a stream that references file.
1. Pass the stream (containing the license file) into the SetLicense method.



**Java**

{{< highlight csharp >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the License class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}



Applying a License from an Embedded Resource. To access the license as a resource by name from an Android package file:

1. Add the license file as a resource to your application's **res/raw** folder.
   The license file should be visible in the **res/raw** folder.
1. Access/load the license from the resource with the following code sample.

**Java**

{{< highlight csharp >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

### Apply Metered License

Aspose.Words allows developers to to apply metered key. It is a new licensing mechanism. The new licensing mechanism will be used along with existing licensing method. Those customers who want to be billed based on the usage of the API features can use the metered licensing.

**Java**

{{< highlight csharp >}}
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

## When to Apply a License

Follow these simple rules:

- The license only needs to be set once per application domain.
- You need to set the license before using any other Aspose.Words classes.

Calling License.SetLicense multiple times is not harmful, but wastes processor time.

If you are developing a class library, call License.SetLicense from a static constructor that uses Aspose.Words. The static constructor execute before an instance of your class is created, making sure Aspose.Words' license is applied properly.

## Using Multiple Aspose Products

If you use several Aspose products in an application, for example Aspose.Words and Aspose.Cells, here are a few useful tips.

- Set the license for each Aspose product separately.
  Even if you have a single license file for all components, for example 'Aspose.Total.Android.Java.lic', you still need to call the License.SetLicense method separately for each Aspose product.
- Use fully qualified License class name.
  Each Aspose product has a License class in its namespace. For example, Aspose.Words has com.aspose.words.License and Aspose.Cells has com.aspose.cells.License class. Using the fullyqualified class name allows you to avoid any confusion about which license is applied to which product.

## Exception - Cannot find license filename

When you download a license you've bought, the license file is named **Aspose.Words.Android.Java.lic** by default. The license file is downloaded through your browser and some browsers recognize the license file as XML and append an .xml extension to the name. The downloaded file becomes **Aspose.Words.Andriod.Java.lic.XML**.

When Microsoft Windows is configured to hide extensions of known file types (unfortunately this is default in most Windows installations), the license file is listed as **Aspose.Words.Android.Java.lic** in Windows Explorer. It looks like the expected file name. If you call License.SetLicense and pass 'Aspose.Words.Android.Java.lic', you'll see and exception because there is no such file. 

To solve the problem, rename the file to remove the invisible .xml extension. We recommend that you disable the "hide extensions" option in Microsoft Windows.

## Changing the License File Name

The license file name does not have to be 'Aspose.Words.Android.Java.lic'. You can rename it to anything you like and use that name when calling License.SetLicense.
