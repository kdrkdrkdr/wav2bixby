app="com.samsung.android.ptts.kokr"
wav_path="00010.wav"
wav_content="$(cat $wav_path)"

mv_dir="$(adb shell run-as $app find /data/user/0/$app/ -name wavs_raw)"
mv_file=$mv_dir/$wav_path


# 파일 푸쉬 하는 것만 해결하면 됨.
adb push $wav_path /sdcard/$wav_path
adb -d shell "run-as $app echo > /sdcard/2.wav"