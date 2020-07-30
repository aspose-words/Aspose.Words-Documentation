---
title: Licensing
type: docs
weight: 50
url: /cpp/licensing/
---

## **Evaluate Aspose.Words**
You can easily download Aspose.Words for C++ for evaluation. The evaluation download is the same as the purchased download. The evaluation version simply becomes licensed when you add a few lines of code to apply for the license.

The evaluation version of Aspose.Words for C++ (*without a license specified*) provides full product functionality. However, it imposes the following limitations:

- It limits the maximum document size to several hundred paragraphs
- It inserts an evaluation watermark at the top of the document on open and saving
- It mentions at the end of all pages (*in footer area*) that this document was created with an evaluation copy of Aspose.Words
- It inserts the watermark logo of Aspose in the middle of all pages of the generated document



{{% alert color="primary" %}} 

If you want to test Aspose.Words for C++ without the evaluation version limitations, you can also request a 30-day Temporary License. Please refer to [How to get a Temporary License?](https://purchase.aspose.com/temporary-license)

{{% /alert %}} 
## **Applying a License**
The license can be applied by providing an explicit path to the .lic file. You can use the [License.SetLicense](https://apireference.aspose.com/cpp/words/class/aspose.words.license/) method to licensing the API.
### **When to Apply a License**
Follow these simple rules:

- The license only needs to be set once per application domain.
- You need to set the license before using any other Aspose.Words classes.
### **Apply License using File or Stream Object**
Calling License.SetLicense multiple times is not harmful but simply wastes processor time. If you are developing a Windows application, call License.SetLicense in your startup code, before using Aspose.Words classes.
#### **Loading a License from File**
In this example Aspose.Words for C++ attempts to find/set the license from the explicit file path.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Quick-Start-ApplyLicenseFromFile-ApplyLicenseFromFile.cpp" >}}
#### **Loading a License from a Stream Object**
Initializes a license from a stream

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Quick-Start-ApplyLicenseFromStream-ApplyLicenseFromStream.cpp" >}}
## **You can Change the License File Name**
The license file name does not have to be 'Aspose.Words.CPP.LIC'. You can rename it to anything you like and use that name when setting license in your application.
## **Exception Cannot find license filename**
When you purchase and download a license, Aspose website names the license file 'Aspose.Words.LIC'. You download the license file using your browser. Some browsers recognize the license file as XML and append a .xml extension to it so the full name of the file on your computer becomes 'Aspose.Words.lic.XML'.

When Microsoft Windows is configured to hide extensions of known file types (unfortunately this is default in most Windows installations), the license file will appear to you as 'Aspose.Words. LIC ' in Windows Explorer. You are likely to think this is the real file name and call License.SetLicense passing it 'Aspose.Words.LIC', but there is no such file, hence the exception.

To solve the problem, rename the file to remove the invisible .xml extension. We also recommend you disable the "hide extensions" option in Microsoft Windows
## **Using Multiple Products from Aspose**
If you use multiple Aspose APIs in your application, for example, Aspose.Words and Aspose.Cells, here are a few useful tips.

- Set the License for each Aspose Product separately. Even if you have a single license file for all components, for example 'Aspose.Total.lic', you still need to call License.SetLicense separately for each Aspose product you are using in your application.
- Use Fully Qualified License Class Name. Each Aspose product has a License class in its namespace. For example, Aspose.Words has **Aspose.Words.License** and Aspose.Cells have **Aspose.Cells.License** class. Using the fully qualified class name allows you to avoid any confusion about which license is applied to which product.




