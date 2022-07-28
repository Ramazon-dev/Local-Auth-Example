local auth pluginini ishlatish uchun qlinadigan ishlar ketma ketligi:

pubspeck.yaml file ga dependencies ichida local_auth: ^"version" qoyiladi
terminalda ->
flutter pub get
buyrugi bajariladi

code lar yozib bolinganidan kegin project ga run berishdan oldin integratsiya qlish kerak boladi 
uning uchun 

ANDROID UCHUN:
anroid/app/src/main/kotlin/com/example/projectname/MainActivity.kt
shu file ichida bolishi kerak bolgan malumotlar:

package com.example.local_auth_example

//mashu qatordan pasini toliq kochirib qoyish kerak
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.embedding.engine.FlutterEngine
import androidx.annotation.NonNull;

class MainActivity: FlutterFragmentActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}

buni joylab chiqilganidan kegin anroid/app/src/main/AndroidManifest.xml ichida 
<manifest dan pasda
    //mana shu 2 qator code ni kochirib qoyish kerak boladi
    <uses-permission android:name="android.permission.USE_FINGERPRINT"/>
    <uses-permission android:name="android.permission.USE_BIOMETRIC"/>

IOS UCHUN:
ios/Runner/info.plis file ichida quyidagi 2 qator code ni joylab qoysangiz boldi
  //mana shu code larni birinchi <dict> dan pastda yoziladi
	<key>NSFaceIDUsageDescription</key>
	<string>Why is my app authenticating using face id?</string>
