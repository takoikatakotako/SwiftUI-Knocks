# 画像用

convert -size 1326x2676 xc:none \(sourceImageURL.path()) -geometry +72+60 -composite \(phoneImageURL.path()) -geometry +0+0 -composite \(outputImageURL.path())"



# 動画用

// 余白をつける
ffmpeg -y -i 222.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white movie-padding.mp4

// 枠をつける
ffmpeg -y -i movie-padding.mp4 -i phone-new.png -filter_complex overlay=10:10 movie-frame.mp4

// 変換
ffmpeg -i movie-frame.mp4 -crf 35 -vf scale=400:-1 output.gif








# 2023-10-01
convert -size 1326x2676 xc:none 2023-10-01/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-01/2023-10-01.png


# 2023-10-02
convert -size 1326x2676 xc:none 2023-10-02/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-02/2023-10-02.png

# 2023-10-03
convert -size 1326x2676 xc:none 2023-10-03/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-03/2023-10-03.png

# 2023-10-04
convert -size 1326x2676 xc:none 2023-10-04/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-04/2023-10-04.png

# 2023-10-05
convert -size 1326x2676 xc:none 2023-10-05/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-05/2023-10-05.png

# 2023-10-06
convert -size 1326x2676 xc:none 2023-10-06/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-06/2023-10-06.png

# 2023-10-07
ffmpeg -i 2023-10-07/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-07/movie-padding.mp4
ffmpeg -i 2023-10-07/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-07/movie-frame.mp4


# 2023-10-08
ffmpeg -i 2023-10-08/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-08/movie-padding.mp4
ffmpeg -i 2023-10-08/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-08/movie-frame.mp4
ffmpeg -i 2023-10-08/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-08/2024-01-08.gif

# 2023-10-09
ffmpeg -i 2023-10-09/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-09/movie-padding.mp4
ffmpeg -i 2023-10-09/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-09/movie-frame.mp4
ffmpeg -i 2023-10-09/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-09/2023-10-09.gif

# 2023-10-10
convert -size 1326x2676 xc:none 2023-10-10/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-10/2023-10-10.png

# 2023-10-11
ffmpeg -i 2023-10-11/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-11/movie-padding.mp4
ffmpeg -i 2023-10-11/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-11/movie-frame.mp4
ffmpeg -i 2023-10-11/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-11/2023-10-11.gif

# 2023-10-12
ffmpeg -i 2023-10-12/2023-10-12.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-12/movie-padding.mp4
ffmpeg -i 2023-10-12/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-12/movie-frame.mp4
ffmpeg -i 2023-10-12/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-12/2023-10-12.gif

# 2023-10-13
convert -size 1326x2676 xc:none 2023-10-13/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-13/2023-10-13.png

# 2023-10-14
ffmpeg -i 2023-10-14/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-14/movie-padding.mp4
ffmpeg -i 2023-10-14/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-14/movie-frame.mp4
ffmpeg -i 2023-10-14/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-14/2023-10-14.gif

# 2023-10-15
ffmpeg -i 2023-10-15/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-15/movie-padding.mp4
ffmpeg -i 2023-10-15/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-15/movie-frame.mp4
ffmpeg -i 2023-10-15/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-15/2023-10-15.gif

# 2023-10-16
ffmpeg -i 2023-10-16/2023-10-16.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-16/movie-padding.mp4
ffmpeg -i 2023-10-16/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-16/movie-frame.mp4
ffmpeg -i 2023-10-16/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-16/2023-10-16.gif

# 2023-10-17
ffmpeg -i 2023-10-17/2023-10-17.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-17/movie-padding.mp4
ffmpeg -i 2023-10-17/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-17/movie-frame.mp4
ffmpeg -i 2023-10-17/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-17/2023-10-17.gif

# 2023-10-18
ffmpeg -i 2023-10-18/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-18/movie-padding.mp4
ffmpeg -i 2023-10-18/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-18/movie-frame.mp4
ffmpeg -i 2023-10-18/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-18/2023-10-18.gif

# 2023-10-19
ffmpeg -i 2023-10-19/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-19/movie-padding.mp4
ffmpeg -i 2023-10-19/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-19/movie-frame.mp4
ffmpeg -i 2023-10-19/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-19/2023-10-19.gif

# 2023-10-20
convert -size 1326x2676 xc:none 2023-10-20/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-20/2023-10-20.png

# 2023-10-21
convert -size 1326x2676 xc:none 2023-10-21/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-21/2023-10-21.png

# 2023-10-22
convert -size 1326x2676 xc:none 2023-10-22/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-22/2023-10-22.png

# 2023-10-23
ffmpeg -i 2023-10-23/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-23/movie-padding.mp4
ffmpeg -i 2023-10-23/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-23/movie-frame.mp4
ffmpeg -i 2023-10-23/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-23/2023-10-23.gif

# 2023-10-24
ffmpeg -i 2023-10-24/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-24/movie-padding.mp4
ffmpeg -i 2023-10-24/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-24/movie-frame.mp4
ffmpeg -i 2023-10-24/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-24/2023-10-24.gif

# 2023-10-25
ffmpeg -i 2023-10-25/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-25/movie-padding.mp4
ffmpeg -i 2023-10-25/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-25/movie-frame.mp4
ffmpeg -i 2023-10-25/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-25/2023-10-25.gif

# 2023-10-26
ffmpeg -i 2023-10-26/2023-10-26.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-26/movie-padding.mp4
ffmpeg -i 2023-10-26/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-26/movie-frame.mp4
ffmpeg -i 2023-10-26/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-26/2023-10-26.gif

# 2023-10-27
ffmpeg -i 2023-10-27/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-27/movie-padding.mp4
ffmpeg -i 2023-10-27/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-27/movie-frame.mp4
ffmpeg -i 2023-10-27/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-27/2023-10-27.gif

# 2023-10-28
ffmpeg -i 2023-10-28/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-28/movie-padding.mp4
ffmpeg -i 2023-10-28/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-28/movie-frame.mp4
ffmpeg -i 2023-10-28/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-28/2023-10-28.gif

# 2023-10-29
ffmpeg -i 2023-10-29/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-10-29/movie-padding.mp4
ffmpeg -i 2023-10-29/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-10-29/movie-frame.mp4
ffmpeg -i 2023-10-29/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-10-29/2023-10-29.gif

# 2023-10-30
convert -size 1326x2676 xc:none 2023-10-30/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-30/2023-10-30.png

# 2023-10-31
convert -size 1326x2676 xc:none 2023-10-31/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-10-31/2023-10-31.png

# 2023-11-01
ffmpeg -i 2023-11-01/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-01/movie-padding.mp4
ffmpeg -i 2023-11-01/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-01/movie-frame.mp4
ffmpeg -i 2023-11-01/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-01/2023-11-01.gif

# 2023-11-02
ffmpeg -i 2023-11-02/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-02/movie-padding.mp4
ffmpeg -i 2023-11-02/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-02/movie-frame.mp4
ffmpeg -i 2023-11-02/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-02/2023-11-02.gif

# 2023-11-03
ffmpeg -i 2023-11-03/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-03/movie-padding.mp4
ffmpeg -i 2023-11-03/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-03/movie-frame.mp4
ffmpeg -i 2023-11-03/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-03/2023-11-03.gif

# 2023-11-04
ffmpeg -i 2023-11-04/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-04/movie-padding.mp4
ffmpeg -i 2023-11-04/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-04/movie-frame.mp4
ffmpeg -i 2023-11-04/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-04/2023-11-04.gif

# 2023-11-05
ffmpeg -i 2023-11-05/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-05/movie-padding.mp4
ffmpeg -i 2023-11-05/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-05/movie-frame.mp4
ffmpeg -i 2023-11-05/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-05/2023-11-05.gif

# 2023-11-06
ffmpeg -i 2023-11-06/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-06/movie-padding.mp4
ffmpeg -i 2023-11-06/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-06/movie-frame.mp4
ffmpeg -i 2023-11-06/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-06/2023-11-06.gif

# 2023-11-07
convert -size 1326x2676 xc:none 2023-11-07/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-07/2023-11-07.png

# 2023-11-08
convert -size 1326x2676 xc:none 2023-11-08/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-08/2023-11-08.png

# 2023-11-09
convert -size 1326x2676 xc:none 2023-11-09/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-09/2023-11-09.png

# 2023-11-10
ffmpeg -i 2023-11-10/2023-11-10.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-10/movie-padding.mp4
ffmpeg -i 2023-11-10/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-10/movie-frame.mp4
ffmpeg -i 2023-11-10/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-10/2023-11-10.gif

# 2023-11-11
ffmpeg -i 2023-11-11/2023-11-11.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-11/movie-padding.mp4
ffmpeg -i 2023-11-11/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-11/movie-frame.mp4
ffmpeg -i 2023-11-11/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-11/2023-11-11.gif

# 2023-11-12
ffmpeg -i 2023-11-12/2023-11-12.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-12/movie-padding.mp4
ffmpeg -i 2023-11-12/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-12/movie-frame.mp4
ffmpeg -i 2023-11-12/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-12/2023-11-12.gif

# 2023-11-13
ffmpeg -i 2023-11-13/2023-11-13.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-13/movie-padding.mp4
ffmpeg -i 2023-11-13/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-13/movie-frame.mp4
ffmpeg -i 2023-11-13/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-13/2023-11-13.gif

# 2023-11-14
ffmpeg -i 2023-11-14/2023-11-14.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-14/movie-padding.mp4
ffmpeg -i 2023-11-14/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-14/movie-frame.mp4
ffmpeg -i 2023-11-14/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-14/2023-11-14.gif

# 2023-11-15
convert -size 1326x2676 xc:none 2023-11-15/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-15/2023-11-15.png

# 2023-11-16
ffmpeg -i 2023-11-16/2023-11-16.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-16/movie-padding.mp4
ffmpeg -i 2023-11-16/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-16/movie-frame.mp4
ffmpeg -i 2023-11-16/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-16/2023-11-16.gif

# 2023-11-17
ffmpeg -i 2023-11-17/2023-11-17.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-17/movie-padding.mp4
ffmpeg -i 2023-11-17/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-17/movie-frame.mp4
ffmpeg -i 2023-11-17/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-17/2023-11-17.gif

# 2023-11-18
convert -size 1326x2676 xc:none 2023-11-18/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-18/2023-11-18.png

# 2023-11-19
ffmpeg -i 2023-11-19/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-19/movie-padding.mp4
ffmpeg -i 2023-11-19/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-19/movie-frame.mp4
ffmpeg -i 2023-11-19/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-19/2023-11-19.gif

# 2023-11-20
ffmpeg -i 2023-11-20/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-20/movie-padding.mp4
ffmpeg -i 2023-11-20/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-20/movie-frame.mp4
ffmpeg -i 2023-11-20/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-20/2023-11-20.gif

# 2023-11-21
ffmpeg -i 2023-11-21/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-21/movie-padding.mp4
ffmpeg -i 2023-11-21/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-21/movie-frame.mp4
ffmpeg -i 2023-11-21/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-21/2023-11-21.gif

# 2023-11-22
ffmpeg -i 2023-11-22/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-22/movie-padding.mp4
ffmpeg -i 2023-11-22/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-22/movie-frame.mp4
ffmpeg -i 2023-11-22/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-22/2023-11-22.gif

# 2023-11-23
ffmpeg -i 2023-11-23/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-23/movie-padding.mp4
ffmpeg -i 2023-11-23/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-23/movie-frame.mp4
ffmpeg -i 2023-11-23/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-23/2023-11-23.gif

# 2023-11-24
ffmpeg -i 2023-11-24/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-24/movie-padding.mp4
ffmpeg -i 2023-11-24/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-24/movie-frame.mp4
ffmpeg -i 2023-11-24/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-24/2023-11-24.gif

# 2023-11-25
ffmpeg -i 2023-11-25/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-25/movie-padding.mp4
ffmpeg -i 2023-11-25/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-25/movie-frame.mp4
ffmpeg -i 2023-11-25/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-25/2023-11-25.gif

# 2023-11-26
ffmpeg -i 2023-11-26/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-26/movie-padding.mp4
ffmpeg -i 2023-11-26/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-26/movie-frame.mp4
ffmpeg -i 2023-11-26/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-26/2023-11-26.gif

# 2023-11-27
convert -size 1326x2676 xc:none 2023-11-27/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-27/2023-11-27.png

# 2023-11-28
convert -size 1326x2676 xc:none 2023-11-28/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-11-28/2023-11-28.png

# 2023-11-29
ffmpeg -i 2023-11-29/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-11-29/movie-padding.mp4
ffmpeg -i 2023-11-29/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-11-29/movie-frame.mp4
ffmpeg -i 2023-11-29/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-11-29/2023-11-29.gif




# 2023-12-01
convert -size 1326x2676 xc:none 2023-12-01/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-12-01/2023-12-01.png

# 2023-12-02
convert -size 1326x2676 xc:none 2023-12-02/image.png -geometry +74+59 -composite phone-frame.png -geometry +0+0 -composite 2023-12-02/2023-12-02.png

# 2023-12-03
ffmpeg -i 2023-12-03/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-03/movie-padding.mp4
ffmpeg -i 2023-12-03/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-03/movie-frame.mp4
ffmpeg -i 2023-12-03/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-03/2023-12-03.gif





# 2023-12-17
ffmpeg -i 2023-12-17/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-17/movie-padding.mp4
ffmpeg -i 2023-12-17/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-17/movie-frame.mp4
ffmpeg -i 2023-12-17/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-17/2023-12-17.gif

# 2023-12-18
ffmpeg -i 2023-12-18/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-18/movie-padding.mp4
ffmpeg -i 2023-12-18/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-18/movie-frame.mp4
ffmpeg -i 2023-12-18/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-18/2023-12-18.gif

# 2023-12-19
ffmpeg -i 2023-12-19/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-19/movie-padding.mp4
ffmpeg -i 2023-12-19/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-19/movie-frame.mp4
ffmpeg -i 2023-12-19/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-19/2023-12-19.gif

# 2023-12-20
ffmpeg -i 2023-12-20/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-20/movie-padding.mp4
ffmpeg -i 2023-12-20/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-20/movie-frame.mp4
ffmpeg -i 2023-12-20/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-20/2023-12-20.gif



# 2023-12-29
ffmpeg -i 2023-12-29/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-29/movie-padding.mp4
ffmpeg -i 2023-12-29/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-29/movie-frame.mp4
ffmpeg -i 2023-12-29/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-29/2023-12-29.gif

# 2023-12-30
ffmpeg -i 2023-12-30/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-30/movie-padding.mp4
ffmpeg -i 2023-12-30/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-30/movie-frame.mp4
ffmpeg -i 2023-12-30/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-30/2023-12-30.gif

# 2023-12-31
ffmpeg -i 2023-12-31/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-31/movie-padding.mp4
ffmpeg -i 2023-12-31/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-31/movie-frame.mp4
ffmpeg -i 2023-12-31/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-31/2023-12-31.gif

# 2024-01-01
ffmpeg -i 2024-01-01/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2024-01-01/movie-padding.mp4
ffmpeg -i 2024-01-01/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2024-01-01/movie-frame.mp4
ffmpeg -i 2024-01-01/movie-frame.mp4 -crf 35 -vf scale=400:-1 2024-01-01/2024-01-01.gif

# 2024-01-02
ffmpeg -i 2024-01-02/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2024-01-02/movie-padding.mp4
ffmpeg -i 2024-01-02/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2024-01-02/movie-frame.mp4
ffmpeg -i 2024-01-02/movie-frame.mp4 -crf 35 -vf scale=400:-1 2024-01-02/2024-01-02.gif




# 2023-12-20
ffmpeg -i 2023-12-20/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-20/movie-padding.mp4
ffmpeg -i 2023-12-20/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-20/movie-frame.mp4
ffmpeg -i 2023-12-20/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-20/2023-12-20.gif

# 2023-12-19（なんかエラー吐く）
ffmpeg -i 2023-12-19/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-19/movie-padding.mp4
ffmpeg -i 2023-12-19/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-19/movie-frame.mp4
ffmpeg -i 2023-12-19/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-19/2023-12-19.gif


# 2023-12-18
ffmpeg -i 2023-12-18/movie.mp4 -vf pad=w=iw+148:h=ih+120:x=85:y=70:color=white 2023-12-18/movie-padding.mp4
ffmpeg -i 2023-12-18/movie-padding.mp4 -i phone-frame.png -filter_complex overlay=10:10 2023-12-18/movie-frame.mp4
ffmpeg -i 2023-12-18/movie-frame.mp4 -crf 35 -vf scale=400:-1 2023-12-18/2023-12-18.gif



