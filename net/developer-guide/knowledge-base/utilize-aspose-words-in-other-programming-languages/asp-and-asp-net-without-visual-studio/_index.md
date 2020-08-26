---
title: ASP and ASP.NET without Visual Studio
type: docs
weight: 40
url: /net/asp-and-asp-net-without-visual-studio/
---

{{% alert color="primary" %}} 

The examples here were kindly provided by one of our forum members.

{{% /alert %}} 
#### **Instant ASP**
JScript ASP page implementing Word to PDF using the COM interface:

**Jscript**

{{< highlight csharp >}}
<%@ LANGUAGE = "jscript" %>
 <html>
 <body>
 <%
 var baseFile = "C:\\Inetpub\\wwwroot\\WordSamples\\test3";
 var lic = Server.CreateObject("Aspose.Words.License");
 lic.SetLicense("C:\\Inetpub\\wwwroot\\WordSamples\\Aspose.Custom.lic");
 var helper = Server.CreateObject("Aspose.Words.ComHelper");
 var doc = helper.Open(baseFile + ".doc");
 doc.Save(baseFile + ".pdf");
 doc = null;
 helper = null;
 lic = null;
 %>
 </body>
 </html>
{{< /highlight >}}
#### **Instant ASP.NET**
Works easiest in ASP.NET v2.0 – Copy Aspose.Words.DLL into a directory named "Bin" in your website directory. Then create your .aspx page and copy the following into it (update the variables at the top as needed. Note that our example assumes a base filename and we play with the extensions from there - .doc and .pdf).

**ASP.NET**

{{< highlight csharp >}}
 <%@ Page Language="C#" %>
 <%@ Import Namespace="System" %>
 <%@ Import Namespace="System.IO" %>
 <%@ Import Namespace="System.Data" %>
 <%@ Import Namespace="Aspose.Words" %>
 <%
 string file = "c:\\inetpub\\wwwroot\\wordsamples\\mtest3";
 string lic = "c:\\inetpub\\wwwroot\\wordsamples\\Aspose.Custom.lic";

 // ===================================

 //       Set Controls Licensing

 // ===================================
 Aspose.Words.License license_w = new Aspose.Words.License();
 license_w.SetLicense(lic);

 // ===================================

 //           Load Word Doc

 // ===================================
 Document doc = new Document(file + ".doc");

 // ===================================

 //       MailMerge Data Fields

 // ===================================

 // *** MANUAL METHOD
 //string[] fieldNames =  {"Company", "EndNumber", "PolicyNumber", "EffectiveDate", "DateIssued", "CounterSignedDate"};
 //object[] fieldValues = {"ABC Corporation of America", "3", "NAC12345", "10/31/2006", "10/28/2006", "10/30/2006"}; 
 //doc.MailMerge.Execute(fieldNames, fieldValues);

 // *** XML FILE METHOD
 DataSet ds = new DataSet();
 System.IO.FileStream fsReadXml = new System.IO.FileStream(file + "_data.xml", System.IO.FileMode.Open);
 System.Xml.XmlTextReader myXmlReader = new System.Xml.XmlTextReader(fsReadXml);
 ds.ReadXml(myXmlReader);
 myXmlReader.Close();
 doc.MailMerge.Execute(ds.Tables["header"]);

 // ===================================

 //        Convert Word to PDF

 // ===================================
 doc.Save(file + ".pdf");
%>
{{< /highlight >}}
