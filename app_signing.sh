keytool -genkey -v -keystore resign.keystore -storepass androiddbg -alias androiddbg -dname "CN=Android Debug,O=Android,C=US"
python make_debuggable.py apk base.apk patched.apk resign.keystore androiddbg