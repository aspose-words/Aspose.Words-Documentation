---
title: Licensing
type: docs
weight: 90
url: /net/licensing/
---

## **Evaluate Aspose.Words**

You can easily download Aspose.Words for evaluation. The evaluation download is the same as the purchased download. The evaluation version simply becomes licensed when you add a few lines of code to apply the license.

The evaluation version of Aspose.Words (without a license specified) provides full product functionality, but it inserts an evaluation watermark at the top of the document on open and save, and limits the maximum document size to several hundred paragraphs.

{{% alert color="primary" %}} 

If you want to test Aspose.Words without the evaluation version limitations, you can also request a 30-day Temporary License. Please refer to [How to get a Temporary License?](https://purchase.aspose.com/temporary-license)

{{% /alert %}} 

## **Applying a License**

Licenses can be applied from various locations:

- Explicit path.
- The folder that contains the Aspose.Words.dll file.
- The folder that contains the assembly that called Aspose.Words.dll.
- The folder that contains the entry assembly (your .exe).
- An embedded resource in the assembly that is called Aspose.Words.dll.

When you reference Aspose.Words.dll in the application, the library is copied to your output directory (unless Copy Local in the properties for that entry is set to false). Include the license next to your output .exe and the Aspose.Words.dll at that location.

Use the [License.SetLicense](https://apireference.aspose.com/net/words/aspose.words/license/methods/setlicense/index) method to license the component. Often the easiest way to set a license is to put the license file in the same folder as the Aspose.Words.dll and specify just the file name without a path, as shown in the following example.

### **When to Apply a License**

Follow these simple rules:

- The license only needs to be set once per application domain.
- You need to set the license before using any other Aspose.Words classes.

### **Apply License using File or Stream Object**

Calling License.SetLicense multiple times is not harmful, but simply wastes processor time.

If you are developing a Windows Forms or console application, call License.SetLicense in your startup code, before using Aspose.Words classes.

When developing an ASP.NET application, you can call License.SetLicense from the Global.asax.cs (Global.asax.vb) file, in the Application_Start protected method. It is called once when the application starts. Do not call License.SetLicense from within Page_Load methods since it means the license will be loaded every time a web page is loaded.

If you are developing a class library, you can call License.SetLicense from a static constructor of your class that uses Aspose.Words. The static constructor will execute before an instance of your class is created making sure Aspose.Words license is properly set.

#### **Loading a License from File**

In this example Aspose.Words attempts to find the license file in the embedded resources or in the assembly folders.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Quick-Start-ApplyLicenseFromFile-ApplyLicenseFromFile.cs" >}}


#### **Loading a License from a Stream Object**

Initializes a license from a stream

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Quick-Start-ApplyLicenseFromStream-ApplyLicenseFromStream.cs" >}}

### **Apply Metered License**

Aspose.Words allows developers to apply metered key. It is a new licensing mechanism. The new licensing mechanism will be used along with existing licensing method. Those customers who want to be billed based on the usage of the API features can use the metered licensing. For more details, please refer to [Metered Licensing FAQ](https://purchase.aspose.com/faqs/licensing/metered) section.

A new class [Metered](https://apireference.aspose.com/net/words/aspose.words/metered) has been introduced to apply metered key. Following is the sample code demonstrating how to set metered public and private keys.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Quick-Start-ApplyMeteredLicense-ApplyMeteredLicense.cs" >}}

## **Including the License File as an Embedded Resource**

A neat way of packaging the license with your application and making sure it will not be lost, is to include it as an embedded resource into one of the assemblies that calls Aspose.Words. To include the file as an embedded resource perform the following steps:

1. In Visual Studio, include the .lic file into the project using the **File | Add Existing Item...** menu.
1. Select the file in the Solution Explorer and set **Build Action** **to Embedded Resource** in the **Properties** window.
1. In your code, invoke [License.SetLicense](https://apireference.aspose.com/net/words/aspose.words/license/methods/setlicense/index) passing only the short name of the resource file.

## **You can Change the License File Name**

The license file name does not have to be 'Aspose.Words.LIC'. You can rename it to anything you like and use that name when setting license in your application.

## **Exception Cannot find license filename**

When you purchase and download a license, Aspose website names the license file 'Aspose.Words.LIC'. You download the license file using your browser. Some browsers recognize the license file as XML and append an .xml extension to it so the full name of the file on your computer becomes 'Aspose.Words.lic.XML'.

When Microsoft Windows is configured to hide extensions of known file types (unfortunately this is default in most Windows installations), the license file will appear to you as 'Aspose.Words. LIC ' in Windows Explorer. You are likely to think this is the real file name and call [License.SetLicense](https://apireference.aspose.com/net/words/aspose.words/license/methods/setlicense/index) passing it 'Aspose.Words.LIC', but there is no such file, hence the exception.

To solve the problem, rename the file to remove the invisible .xml extension. We also recommend you disable the "hide extensions" option in Microsoft Windows.

## **Using Multiple Products from Aspose**

If you use multiple Aspose products in your application, for example Aspose.Words and Aspose.Cells, here are a few useful tips.

- Set the License for each Aspose Product Separately. Even if you have a single license file for all components, for example 'Aspose.Total.lic', you still need to call [License.SetLicense](https://apireference.aspose.com/net/words/aspose.words/license/methods/setlicense/index) separately for each Aspose product you are using in your application.
- Use Fully Qualified License Class Name. Each Aspose product has a [License](https://apireference.aspose.com/net/words/aspose.words/license) class in its namespace. For example, Aspose.Words has **Aspose.Words.License** and Aspose.Cells has **Aspose.Cells.License** class. Using the fully qualified class name allows you to avoid any confusion about which license is applied to which product.
