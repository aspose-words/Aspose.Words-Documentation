---
title: ปรับแต่งผลิตภัณฑ์ในโครงการCMake
second_title: Aspose.WordsสำหรับC++
articleTitle: กำหนดค่า Aspose.WordsสำหรับC++ ในCMakeโครงการ
linktitle: กำหนดค่า Aspose.WordsสำหรับC++ ในCMakeโครงการ
description: "กำหนดค่า Aspose.WordsสำหรับC++ ในCMakeของคุณและสร้างคุณแอพลิเคชัน."
type: docs
weight: 90
url: /th/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.WordsสำหรับC++ APIทำงานร่วมกับCMakeสำหรับระบบปฏิบัติการใดๆGNU/Linux มันสามารถ [ดาวน์โหลดจากเว็บไซต์อย่างเป็นทางการ](https://cmake.org/download/).

## ให้CMakeโครงการ

สมมติว่าคุณมีโครงการCMakeต่อไปนี้:

*CMakeLists.txt:*
{{< highlight bash >}}
cmake_minimum_required(VERSION 3.18 FATAL_ERROR)
project(app CXX)
add_executable(app main.cpp)
{{< /highlight >}}

*main.cpp:*
{{< highlight bash >}}
int main()
{
    return 0;
}
{{< /highlight >}}

## กำหนดค่าด้วยตนเอง

ทำตามคำแนะนำด้านล่างเพื่อกำหนดค่าด้วยตนเอง Aspose.WordsสำหรับC++ ในCMakeของคุณ:

1. [ดาวน์โหลดล่าสุด Aspose.WordsสำหรับC++ แพคเกจ](https://releases.aspose.com/words/cpp/)

2. คัดลอกAspose.Words.Cppและ`CodePorting.Native.Cs2Cpp_api_*.*`โฟลเดอร์ที่คุณมีCMakeListsเท็กซัส

3. เพิ่มบรรทัดต่อไปนี้ให้กับคุณCMakeListsเท็กซัส:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. ตอนนี้คุณสามารถสร้างโปรแกรมที่คุณใช้ Aspose.WordsสำหรับC++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
