---
title: 트루타입 글꼴 위치 지정
second_title: Python via .NET용 Aspose.Words
articleTitle: 트루타입 글꼴 위치 지정
linktitle: 트루타입 글꼴 위치 지정
description: "Python를 사용하여 시스템 폴더, 사용자 소스, 스트림에서 글꼴 로드, 파일 시스템 또는 메모리 등 다양한 트루타입 글꼴 소스를 지정합니다."
type: docs
weight: 30
url: /ko/python-net/specifying-truetype-fonts-location/
---

이 항목에서는 운영 체제별 차이점을 포함하여 트루타입 글꼴을 찾을 때 Aspose.Words의 기본 동작을 설명하고 사용자 글꼴 소스를 지정하는 방법을 보여줍니다.

[FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) 클래스는 다양한 글꼴 소스를 지정하는 데 사용됩니다. [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) 클래스에는 여러 가지 구현이 있습니다

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

일부 클래스의 구현 세부사항은 아래에 설명되어 있습니다.

## 시스템에서 글꼴 로드

기본적으로 항상 사용되는 특별한 [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) 클래스가 있습니다. 시스템에 설치된 모든 트루타입 글꼴을 나타냅니다. 따라서 [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) 및 기타 필수 소스를 사용하여 소스 목록을 생성할 수 있습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

[SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) 클래스의 단일 인스턴스는 기본적으로 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)에 정의됩니다. 다른 운영 체제에서는 글꼴이 다른 위치에 있을 수 있습니다. 그러나 각 문서에 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 인스턴스를 사용하는 것은 최적의 솔루션이 아닙니다. 대부분의 경우 [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/)을 사용하면 충분합니다.

문서별 인스턴스는 문서마다 다른 글꼴 소스를 사용해야 하는 경우에만 필요하며 이는 드문 경우입니다. 여러 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 인스턴스를 사용하면 캐시를 공유하지 않으므로 성능이 저하됩니다.

### Aspose.Words가 Windows에서 트루타입 글꼴을 찾는 위치

대부분의 경우 Windows 사용자는 글꼴 누락이나 잘못된 레이아웃으로 인한 심각한 문제에 직면하지 않습니다. 일반적으로 Aspose.Words는 문서를 살펴보고 글꼴 링크를 발견하면 시스템 폴더에서 글꼴 데이터를 성공적으로 가져옵니다.

Windows에서 Aspose.Words는 먼저 _%windir%\Fonts 폴더에서 사용 가능한 모든 글꼴을 가져옵니다. 이 설정은 대부분의 경우 작동합니다. 필요한 경우에만 자신만의 글꼴 폴더를 지정하세요. .NET용 Aspose.Words는 *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* 레지스트리 키에 등록된 추가 글꼴도 찾습니다. 또한 Windows 10을 사용하면 현재 사용자가 글꼴을 설치할 수 있습니다. 글꼴은 *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* 폴더에 위치하며 *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* 레지스트리에도 지정됩니다. 여기서 Aspose.Words는 이러한 글꼴을 찾습니다.

문서에 포함된 글꼴이 포함된 경우 Aspose.Words는 문서에서 관련 글꼴 데이터를 읽고 이를 사용하여 문서의 레이아웃을 만들 수 있습니다. 문서에는 시스템 폴더에 없는 글꼴에 대한 링크가 포함될 수도 있으며, 이 경우 다음 시나리오가 작동합니다

- 사용자는 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 클래스를 통해 새로운 글꼴 소스를 설정할 수 있습니다
- Aspose.Words는 누락된 글꼴을 유사한 글꼴로 대체하려고 시도할 수 있습니다


### Windows가 아닌 시스템의 글꼴

Aspose.Words는 시스템 글꼴 폴더에서 글꼴을 찾습니다. 이러한 폴더 목록은 [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) 방법으로 볼 수 있습니다. 지원되는 글꼴이 없으면 Aspose.Words는 내장된 기본 글꼴 Fanwood.ttf를 사용합니다.

Windows와 비 Windows OS의 글꼴 메트릭이 다르기 때문에 Aspose.Words는 유사한 글꼴을 찾고 원본과 유사한 레이아웃을 구축하기 위해 가능한 모든 작업을 수행합니다. 그러나 이것이 항상 가능한 것은 아닙니다. 이러한 경우 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 클래스를 사용하여 사용자 정의 글꼴이나 대체 규칙을 추가해야 합니다.

#### Aspose.Words가 Linux에서 트루타입 글꼴을 찾는 위치

다양한 Linux 배포판은 글꼴을 다른 폴더에 저장할 수 있습니다. Aspose.Words는 여러 위치에서 글꼴을 찾습니다. 기본적으로 Aspose.Words는 */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts* 위치에서 글꼴을 찾습니다. 이 기본 동작은 대부분의 Linux 배포판에서 작동하지만 항상 작동한다고 보장할 수는 없습니다. 이 경우 true 유형 글꼴의 위치를 명시적으로 지정해야 할 수도 있습니다. 이렇게 하려면 Linux 배포판에서 트루타입 글꼴이 설치된 위치를 알아야 합니다.

#### Aspose.Words가 Mac OS X에서 트루타입 글꼴을 찾는 위치

Aspose.Words는 Mac OS X에서 트루타입 글꼴의 표준 위치인 */Library/Fonts* 폴더에서 글꼴을 찾습니다. 이 설정은 대부분의 경우 작동하지만 필요한 경우.

## 폴더에서 글꼴 로드

처리 중인 문서에 시스템에 없는 글꼴에 대한 링크가 포함되어 있거나 해당 글꼴을 시스템 폴더에 추가하고 싶지 않거나 권한이 부족한 경우 가장 좋은 해결책은 다음을 사용하여 자신의 글꼴이 포함된 폴더를 추가하는 것입니다. [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) 방법. 이렇게 하면 시스템 소스를 사용자 소스로 바꿀 수 있습니다. Aspose.Words는 더 이상 레지스트리 또는 Windows\Font 폴더에서 글꼴을 찾지 않고 대신 지정된 폴더 내의 글꼴만 검색합니다. [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) 메소드는 해당 값을 반환합니다.

### 하나 또는 여러 개의 글꼴 폴더 지정

[FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) 및 [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) 방법은 하나 이상의 [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) 인스턴스가 있는 [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) 방법에 대한 바로 가기입니다. 이러한 메서드는 Aspose.Words이 글꼴을 찾아야 하는 위치를 나타내는 데 사용됩니다. 폴더가 존재하지 않거나 액세스할 수 없는 경우 Aspose.Words은 이 폴더를 무시합니다. 글꼴 대체 소스를 포함한 모든 폴더가 무시되면 Aspose.Words은 Fanwood 글꼴을 기본값으로 사용합니다.

다음 예는 글꼴을 렌더링하거나 포함하는 동안 Aspose.Words가 이후에 트루타입 글꼴을 찾는 데 사용할 폴더 또는 소스를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

추가 부울 매개변수는 모든 폴더를 통해 글꼴을 반복적으로 검사할지 여부를 제어하므로 지정된 폴더의 모든 하위 폴더를 검사합니다. 다음 예에서는 글꼴을 렌더링하거나 포함할 때 트루타입 글꼴을 여러 폴더에서 찾도록 Aspose.Words를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

우선순위에 유의하세요. 서로 다른 글꼴 소스에 동일한 계열 이름과 스타일을 가진 글꼴이 있는 경우 Aspose.Words는 우선 순위가 더 높은 소스에서 글꼴을 선택합니다. 아래의 "우선순위" 필드에 대한 설명을 참조하세요.

시스템 글꼴을 전혀 사용하고 싶지 않다면 Aspose.Words를 사용하면 시스템 글꼴을 무시하고 자신만의 글꼴만 사용할 수 있습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### 우선순위 재산

**우선 사항** 속성은 서로 다른 글꼴 소스에 동일한 계열 이름과 스타일을 가진 글꼴이 있는 경우에 사용됩니다. 이 경우 Aspose.Words는 우선 순위 값이 더 높은 소스에서 글꼴을 선택합니다. 예를 들어, 시스템 폴더에 이전 버전의 글꼴이 있고 고객이 사용자 정의 폴더에 동일한 글꼴의 새 버전을 추가했습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## 사용 가능한 글꼴 목록 가져오기

예를 들어 PDF 문서를 렌더링하는 데 사용할 수 있는 사용 가능한 글꼴 목록을 얻으려면 다음 코드 예제와 같이 [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) 메서드를 사용할 수 있습니다. [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) 클래스는 Aspose.Words 글꼴 엔진에서 사용할 수 있는 물리적 글꼴에 대한 정보를 지정합니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
