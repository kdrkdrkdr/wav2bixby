rm -rf original.apk patched.apk patched.apk.idsig
apk_name=com.samsung.android.ptts.kokr
apk_location=$(adb shell pm list packages -f -3 | grep $apk_name | sed 's/.*:\(.*\).apk.*/\1/').apk
adb pull $apk_location original.apk
keytool -genkey -v -keystore resign.keystore -storepass androiddbg -alias androiddbg -dname "CN=Android Debug,O=Android,C=US"
python make_debuggable.py apk original.apk patched.apk resign.keystore androiddbg
adb uninstall $apk_name
adb install patched.apk