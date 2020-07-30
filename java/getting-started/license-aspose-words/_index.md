---
title: License Aspose.Words
type: docs
weight: 90
url: /java/license-aspose-words/
---

## **Evaluate Aspose.Words**
You can easily download/install Aspose.Words for Java and Aspose.Words for Android via Java from [Maven](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/) for evaluation. The evaluation download is the same as the purchased download. The evaluation version simply becomes licensed when you add a few lines of code to apply the license.

The evaluation versions of Aspose.Words for Java and Aspose.Words for Android via Java (without a license specified) provide full product functionalities, but they insert an evaluation watermark at the top of the document on open and save, and limit the maximum document size to several hundred paragraphs.

{{% alert color="primary" %}} 

If you want to test 'Aspose.Words for Java' or 'Aspose.Words for Android via Java' without the evaluation version limitations, you can also request a 30-day Temporary License. Please refer to [How to get a Temporary License?](https://purchase.aspose.com/temporary-license)

{{% /alert %}} 
## **Applying a License**
The license is a plain text XML file that contains details such as the product name, number of developers it is licensed to, subscription expiry date and so on. The file is digitally signed, so do not modify the file; even the inadvertent addition of an extra line break into the file will invalidate it. You need to set a license before performing any operations with documents. Make sure you do this before creating a Document object.

Licenses can be applied from various locations:

- Explicit path
- The folder that contains the Aspose.Words' JAR file.
- An embedded resource in the JAR that called Aspose.Words' JAR.

Use the License.setLicense method to license the APIs. Often the easiest way to set a license is to put the license file in the same folder as Aspose.Words' JAR and specify just the file name without path.
### **Apply License using File or Stream Object**
In this example Aspose.Words will attempt to find the license file in the folder that contain the JARs of your application.

{{< highlight java >}}

 com.aspose.words.License license = new com.aspose.words.License();

license.setLicense("Aspose.Words.Java.lic");

{{< /highlight >}}

Initializes a license from a stream.

{{< highlight java >}}

 com.aspose.words.License license = new com.aspose.words.License();

license.setLicense(new java.io.FileInputStream("Aspose.Words.Java.lic"));

{{< /highlight >}}
### **Including the License File as an Embedded Resource**
You can simply copy the LIC file in the **resources** folder of your project. Rebuilding the project should embed the .lic file into application’s .jar file. After that you can apply license by using the code like below:

{{< highlight java >}}

 License lic = new License();

lic.setLicense(Program.class.getResourceAsStream("Aspose.Words.Java.lic"));

{{< /highlight >}}
### **Validate the License**
It is possible to validate if the license has been set properly or not. The License class has the isLicensed field that will return true if license has been properly set.

{{< highlight java >}}

 License license = new License();

license.setLicense("Aspose.Words.Java.lic");



if (License.isLicensed()) {

    System.out.println("License is Set!");

}

{{< /highlight >}}
## **Apply Metered License**
Aspose.Words allows developers to apply metered key. It is a new licensing mechanism. The new licensing mechanism will be used along with existing licensing method. Those customers who want to be billed based on the usage of the API features can use the metered licensing. For more details, please refer to [Metered Licensing FAQ](https://purchase.aspose.com/faqs/licensing/metered) section.

A new class [Metered](https://apireference.aspose.com/java/words/com.aspose.words/Metered) has been introduced to apply metered key. Following is the sample code demonstrating how to set metered public and private key.

A new class [Metered](https://apireference.aspose.com/java/words/com.aspose.words/Metered) has been introduced to apply metered key. Following is the sample code demonstrating how to set metered public and private key.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-quickstart-ApplyMeteredLicense-ApplyMeteredLicense.java" >}}
## **When to Apply a License**
Follow these simple rules:

- The license only needs to be set once per application domain.
- You need to set the license before using any other Aspose.Words classes.
- Calling License.SetLicense multiple times is not harmful, but simply wastes processor time.

If you are developing a class library, you can call License.SetLicense from a static constructor of your class that uses Aspose.Words. The static constructor will execute before an instance of your class is created making sure Aspose.Words license is properly set.
## **You can Change the License File Name**
The license file name does not have to be 'Aspose.Words.LIC'. You can rename it to anything you like and use that name when calling License.SetLicense.
## **Exception Cannot find license filename**
When you purchase and download a license, Aspose website names the license file 'Aspose.Words.LIC'. You download the license file using your browser. Some browsers recognize the license file as XML and append an .xml extension to it so the full name of the file on your computer becomes 'Aspose.Words.lic.XML'.

When Microsoft Windows, for example, is configured to hide extensions of known file types (unfortunately this is default in most Windows installations), the license file will appear to you as 'Aspose.Words.LIC ' in Windows Explorer. You are likely to think this is the real file name and call License.SetLicense passing it 'Aspose.Words.LIC ', but there is no such file, hence the exception.

To solve the problem, rename the file to remove the invisible .xml extension. We also recommend you disable the "hide extensions" option in Microsoft Windows.
## **Using Multiple APIs from Aspose**
` `If you use multiple Aspose APIs in your application, for example Aspose.Words and Aspose.Cells, here are a few useful tips. 

- Set the License for each Aspose API separately. Even if you have a single license file for all APIs, for example 'Aspose.Total.lic', you still need to call License.SetLicense separately for each Aspose API you are using in your application.
- Use Fully Qualified License Class Name. Each Aspose API has a License class in its namespace. For example, Aspose.Words has com.aspose.words.License and Aspose.Cells has com.aspose.cells.License class. Using the fully qualified class name allows you to avoid any confusion about which license is applied to which product.
