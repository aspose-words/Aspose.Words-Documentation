---
title: 您的第一个申请 Android 通过 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 您的第一个应用程序
linktitle: 您的第一个应用程序
description: "安装 Aspose.Words (单位:千美元) Android 通过 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

这篇文章给你一个开始的想法 Aspose.Words (单位:千美元) Android 通过 Java。 。 。 。 它将展示如何建立一个新的 Android 从零开始的工程,添加引用 Aspose.Words JAR 并创建以 DOCX 格式保存到磁盘的新文档。 此示例使用 [Android 工作室](https://developer.android.com/studio/index.html) 应用程序运行于 Android 模拟器. 开始 Aspose.Words (单位:千美元) Android 通过 Java,请遵循此分步教程,以创建一个应用 Aspose.Words (单位:千美元) Android 通过 Java编号:

一、导 言 下载和 [Android 工作室](https://developer.android.com/studio/index.html) 并安装到任何地点。
一、导 言 运行 Android 录音室
一、导 言 创建新 Android 应用工程.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. 将17.5-android.via.java.jar 复制到您的项目中<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
一、导 言 选择工程部分(从文件菜单并点击依赖标签)。
   1. 点击"+"按钮,选择文件依赖选项.
   1. 选择 Aspose.Words 从 libs 文件夹中单击"确定"。<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
一、导 言 需要时与 Gradle 文件同步工程<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
一、导 言 为了访问SDcard特别权限,必须添加. 点击 AndroidCommond.xml 文件并选择 XML 视图 。 在文件中添加以下行 <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
一、导 言 导航返回应用程序的代码段,并添加以下导入:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
然后在创建方法的正文中插入以下代码,以便使用 Aspose.Words,
插入一些文本,并以 DOCX 格式保存到 SDCard 。<br/>
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
{{< /highlight >}}<br/>
整个代码应该是这样的:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
一、导 言 现在再次运行应用程序 。 这一次 Aspose.Words 代码将在背景中运行,并生成保存到SDcard的文档。<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
一、导 言 要查看创建的文档导航到工具菜单, 请选择 Android 选择 Android 设备监视器<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
一、导 言 使用默认查看器打开文档。 应用程序产生的只有几行代码的输出是这样的:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
