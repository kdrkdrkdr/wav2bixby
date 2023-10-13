# 24hHz, mono, s16
data_dir="datasets/hutao"

app="com.samsung.android.ptts.kokr"
mv_dir="$(adb shell run-as $app find /data/user/0/$app/ -name wavs_raw)"
mv_file=$mv_dir/$wav_path

for ((i=1; i<=18; i++)); do
    filename=$(printf "%05d.wav" "$i")
    wav_path=$data_dir/$filename
    tmp_file="/data/local/tmp/$filename"
    adb push $filename $tmp_file
    adb shell run-as $app mv $tmp_file $mv_dir
done