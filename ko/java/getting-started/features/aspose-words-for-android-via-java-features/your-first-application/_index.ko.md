---
title: Android을 통해Java에 대한 첫 번째 응용 프로그램
second_title: Aspose.WordsJava
articleTitle: 첫 번째 응용 프로그램
linktitle: 첫 번째 응용 프로그램
description: "Java를 통해Android에Aspose.Words을 설치합니다."
type: docs
weight: 30
url: /ko/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

이 문서에서는 Java을 통해 Android에 대한 Aspose.Words을 시작하는 방법에 대한 아이디어를 제공합니다. 처음부터 새 Android 프로젝트를 설정하고, Aspose.Words JAR에 대한 참조를 추가하고, DOCX 형식으로 디스크에 저장되는 새 문서를 만드는 방법을 보여줍니다. 이 예제에서는 다음을 사용합니다.[ Android 스튜디오](https://developer.android.com/studio/index.html) 개발을 위해 그리고 애플리케이션은 Android 에뮬레이터에서 실행됩니다. Java을 통해 Android에 대한 Aspose.Words을 시작하려면, Java을 통해 Android에 대한 Aspose.Words을 사용하는 앱을 만드는 단계별 튜토리얼을 따르세요.

1. 다운로드 및[ Android 스튜디오](https://developer.android.com/studio/index.html) 어떤 위치에나 설치할 수 있습니다.
1. Android스튜디오를 실행합니다.
1. 새Android응용 프로그램 프로젝트를 만듭니다.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Aspose-words-17.5-android.via.java.jar을 프로젝트의 라이브러리/폴더에 복사합니다<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. 프로젝트 섹션 선택(파일 메뉴에서 종속성 탭을 클릭하십시오.
   1. "+"버튼을 클릭하고 파일 종속성 옵션을 선택하십시오.
   1. 라이브러리 폴더에서Aspose.Words라이브러리를 선택하고OK를 클릭합니다.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. 필요한 경우 프로젝트를 그레이들 파일과 동기화<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. SDcard에 접근하기 위해서는 특별한 권한이 추가되어야 합니다. AndroidManifest.xml파일을 클릭하고XML보기를 선택합니다. 파일에 다음 줄을 추가합니다 <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. 앱의 코드 섹션으로 다시 이동하여 다음 가져오기를 추가합니다:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
그런 다음onCreate메서드의 본문에 다음 코드를 삽입하여Aspose.Words을 사용하여 처음부터 새 문서를 만듭니다,
일부 텍스트를 삽입하고DOCX형식으로SDCard에 저장합니다.<br>
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
전체 코드는 다음과 같습니다:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. 이제 응용 프로그램을 다시 실행하십시오. 이번에는Aspose.Words코드가 백그라운드에서 실행되고SDcard에 저장된 문서를 생성합니다.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. 생성된 문서를 보려면 도구 메뉴로 이동한 다음Android을 선택하고Android장치 모니터를 선택합니다<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. 기본 뷰어를 사용하여 문서를 엽니다. 몇 줄의 코드로 앱에서 생성된 출력은 다음과 같습니다:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
