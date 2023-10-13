wav_path="00001.wav"
wav_content="$(cat $wav_path)"
app="com.samsung.android.ptts.kokr"
cp_path=/data/user/0/$app/files/ptts/profile/vdata_ko_KR_p00.ptts.J3Aak2k62P0IxXh6/data/wavs_raw/
adb shell "run-as $app sh -c 'echo \"$wav_content\" > $cp_path'"