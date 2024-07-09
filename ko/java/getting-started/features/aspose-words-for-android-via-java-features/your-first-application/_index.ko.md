---
title: 당신의 첫번째 신청 Android 이름 * Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 당신의 첫번째 신청
linktitle: 당신의 첫번째 신청
description: "설치하기 Aspose.Words 제품정보 Android 이름 * Java·"
type: docs
weight: 30
url: /ko/java/your-first-application/
---

이 문서는 당신과 함께 시작하는 아이디어를 제공합니다 Aspose.Words 제품정보 Android 이름 * Java· 그것은 새로운 설정 방법을 보여줍니다 Android 찰상에서 프로젝트는, 참고를 추가합니다 Aspose.Words JAR 그리고 DOCX 형식으로 디스크에 저장되는 새 문서를 만듭니다. 이 예제는 [Android 사이트맵](https://developer.android.com/studio/index.html) 개발 및 응용 프로그램에 대한 실행 Android 에뮬레이터. 시작하기 Aspose.Words 제품정보 Android 이름 * Java, 이 단계별 튜토리얼을 따르십시오. Aspose.Words 제품정보 Android 이름 * Java::

1. 명세 다운로드 및 [Android 사이트맵](https://developer.android.com/studio/index.html) 어떤 위치에 설치.
1. 명세 시작하기 Android 스튜디오.
1. 명세 새로운 기능 Android 신청 프로젝트.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. 프로젝트의 libs/folder로 aspose-words-17.5-android.via.java.jar 복사<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. 명세 Project Section 선택 (파일 메뉴에서 Dependencies 탭을 클릭하십시오.
   1. "+"버튼을 클릭하면 파일 의존성 옵션을 선택하십시오.
   1. 선택 Aspose.Words libs 폴더에서 라이브러리를 클릭하고 OK를 클릭합니다.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. 명세 필요한 경우 Gradle 파일과 프로젝트를 동기화<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. 명세 SDcard 특별 허가에 액세스하려면 추가해야합니다. 자주 묻는 질문 AndroidManifest.xml 파일을 선택하고 XML보기를 선택하십시오. 다음 줄을 파일에 추가 <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. 명세 앱의 코드 섹션으로 돌아가고 다음 가져 오기를 추가하십시오.<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
그런 다음 onCreate 메서드의 본문에 다음 코드를 삽입하여 스크래치에서 새 문서를 생성 Aspose.Words,
일부 텍스트를 삽입하고 DOCX 형식으로 SDCard에 저장하십시오.<br/>
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
전체 코드는 다음과 같습니다:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. 명세 이제 다시 응용 프로그램을 실행합니다. 이 시간 Aspose.Words 코드는 배경에서 실행하고 SDcard에 저장된 문서를 생성합니다.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. 명세 생성 된 문서를 보려면 도구 메뉴로 이동 한 다음 선택 Android 그리고 선택 Android 장치 모니터<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. 명세 default viewer를 사용하여 문서를 엽니다. 몇 줄의 코드로 앱에 의해 생성 된 출력은 다음과 같습니다.<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)