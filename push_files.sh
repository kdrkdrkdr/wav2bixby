wav_path="00010.wav"
wav_content="$(cat $wav_path)"
app="com.samsung.android.ptts.kokr"
mv_dir=/data/user/0/$app/files/ptts/profile/vdata_ko_KR_p00.ptts.J3Aak2k62P0IxXh6/data/wavs_raw
mv_file=$mv_dir/$wav_path
# adb -d shell "run-as $app find /data/user/0/$app/ -type d -exec chmod 777 {} \;"

adb push $wav_path /sdcard/

# # adb push run-as $app $wav_path $full_path
# adb -d shell "run-as $app sh -c 'echo \"$wav_content\" > $mv_file'"