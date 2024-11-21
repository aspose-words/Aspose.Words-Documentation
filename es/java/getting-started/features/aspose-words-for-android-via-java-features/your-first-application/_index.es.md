---
title: Su primera solicitud para Android via Java
second_title: Aspose.Words para Java
articleTitle: Su primera aplicación
linktitle: Su primera aplicación
description: "Instalación Aspose.Words para Android via Java."
type: docs
weight: 30
url: /es/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Este artículo te da una idea de empezar con Aspose.Words para Android via Java. Demostrará cómo configurar un nuevo Android proyecto desde cero, añadir una referencia al Aspose.Words JAR y crear un nuevo documento que se guarda en el disco en formato DOCX. Este ejemplo utiliza [Android Studio](https://developer.android.com/studio/index.html) para el desarrollo y la aplicación se ejecuta en Android Emulador. Para empezar con Aspose.Words para Android via Java, por favor siga este tutorial paso a paso para crear una aplicación que utiliza Aspose.Words para Android via Java:

1. Descarga y el [Android Studio](https://developer.android.com/studio/index.html) e instalarlo en cualquier lugar.
1. Corre. Android Studio.
1. Crear un nuevo Android Proyecto de aplicación.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copiar las palabras de la aspose-17.5-android.via.java.jar en las libs/carpeta de su proyecto<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Seleccione Sección de Proyectos (desde el menú de archivos y haga clic en la pestaña Dependencias.
   1. Haga clic en el botón "+", seleccione la opción de dependencia del archivo.
   1. Seleccione Aspose.Words biblioteca de la carpeta libs y haga clic en Aceptar.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sincronizar el proyecto con archivos Gradle si es necesario<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Para acceder a los permisos especiales de SDcard debe añadirse. Haga clic en AndroidArchivo Manifest.xml y elegir la vista XML. Añadir la siguiente línea al archivo <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Regrese a la sección de código de la aplicación y agregue las siguientes importaciones:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
Y luego inserte el siguiente código en el cuerpo del método onCreate para crear un nuevo documento desde cero utilizando Aspose.Words,
insertar un texto y guardarlo al SDCard en formato DOCX.<br/>
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
El código completo debe verse así:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Ahora vuelva a ejecutar la solicitud. Esta vez Aspose.Words el código se ejecutará en el fondo y generará un documento que se guarda en el SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Para ver el documento creado navegar al menú Herramientas, luego elegir Android y elegir Android Monitor de dispositivo<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Utilice el visor predeterminado para abrir el documento. La salida generada por la aplicación con sólo unas pocas líneas de código se ve así:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
