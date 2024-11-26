---
title: Su Primera Solicitud para Android a través de Java
second_title: Aspose.Words por Java
articleTitle: Su Primera Aplicación
linktitle: Su Primera Aplicación
description: "Instalando Aspose.Words para Android a través de Java."
type: docs
weight: 30
url: /es/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Este artículo le da una idea de cómo comenzar con Aspose.Words para Android a través de Java. Demostrará cómo configurar un nuevo proyecto Android desde cero, agregar una referencia al Aspose.Words JAR y crear un nuevo documento que se guarda en el disco en formato DOCX. Este ejemplo usa [Android Estudio](https://developer.android.com/studio/index.html) para el desarrollo y la aplicación se ejecuta en el emulador Android. Para comenzar con Aspose.Words para Android a través de Java, siga este tutorial paso a paso para crear una aplicación que use Aspose.Words para Android a través de Java:

1. Descarga y el [Android Estudio](https://developer.android.com/studio/index.html) e instálelo en cualquier ubicación.
1. Ejecute el Android Studio.
1. Cree un nuevo Proyecto de aplicación Android.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copie aspose-words-17.5-android.via.java.jar en la carpeta libs/de su proyecto<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Seleccione la sección Proyecto (en el menú archivo y haga clic en la pestaña Dependencias.
   1. Haga clic en el botón "+", seleccione la opción dependencia de archivos.
   1. Seleccione Aspose.Words biblioteca de la carpeta libs y haga clic en OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sincronice el proyecto con los archivos de Gradle si es necesario<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Para acceder a los SDcard se deben agregar permisos especiales. Haga clic en el archivo AndroidManifest.xml y elija la vista XML. Agregue la siguiente línea al archivo <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Regrese a la sección de código de la aplicación y agregue las siguientes importaciones:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Y luego inserte el siguiente código en el cuerpo del método onCreate para crear un nuevo documento desde cero usando Aspose.Words,
inserte texto y guárdelo en el formato SDCard en DOCX.<br>
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
El código completo debería verse así:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Ahora ejecute la aplicación nuevamente. Esta vez, el código Aspose.Words se ejecutará en segundo plano y generará un documento que se guardará en SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Para ver el documento creado, navegue hasta el menú Herramientas, luego elija Android y elija Android Monitor de dispositivo<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Utilice el visor predeterminado para abrir el documento. El resultado generado por la aplicación con solo unas pocas líneas de código se ve así:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
