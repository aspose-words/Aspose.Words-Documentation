---
title: 你的第一个申请Android通过Java
second_title: Aspose.Words为Java
articleTitle: 你的第一份申请
linktitle: 你的第一份申请
description: "通过Java为Android安装Aspose.Words。"
type: docs
weight: 30
url: /zh/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

这篇文章给你一个从Aspose.Words到Android通过Java开始的想法. 它将演示如何从头开始设置一个新的Android项目，添加对Aspose.WordsJAR的引用并创建一个以DOCX格式保存到磁盘的新文档。 此示例使用 [Android工作室](https://developer.android.com/studio/index.html) 对于开发和应用程序在Android模拟器上运行。 要开始使用Aspose.WordsforAndroidviaJava，请按照此分步教程创建一个应用程序，该应用程序使用Aspose.WordsforAndroidviaJava:

1. 下载及 [Android工作室](https://developer.android.com/studio/index.html) 并将其安装到任何位置。
1. 运行Android工作室。
1. 创建一个新的Android应用程序项目。<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. 将aspose-words-17.5-android.via.java.jar复制到项目的libs/文件夹中<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. 选择项目部分（从"文件"菜单中，然后单击"依赖项"选项卡。
   1. 单击"+"按钮，选择文件依赖项选项。
   1. 从libs文件夹中选择Aspose.Words库，然后单击OK。<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. 如果需要，将项目与Gradle文件同步<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. 为了访问SDcard，必须添加特殊权限。 单击AndroidManifest.xml文件并选择XML视图。 将以下行添加到文件中 <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. 导航回应用程序的代码部分，并添加以下导入:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
然后在onCreate方法的正文中插入以下代码，以使用Aspose.Words从头开始创建新文档,
插入一些文本并以DOCX格式将其保存到SDCard中。<br>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br>
完整的代码应该是这样的:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. 现在再次运行应用程序。 这次Aspose.Words代码将在后台运行并生成一个保存到SDcard的文档。<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. 要查看创建的文档，请导航到"工具"菜单，然后选择Android并选择Android设备监视器<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. 使用默认查看器打开文档。 应用程序只用几行代码生成的输出如下所示:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
