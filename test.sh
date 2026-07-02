#!/bin/sh

# bad output: --lang deu
vobsub2srt --lang deu patrol-mad.max1.1080p
# Selected VOBSUB language: 0 language: de
mv patrol-mad.max1.1080p.srt patrol-mad.max1.1080p.lang-deu.tessdata-default.srt

# bad output: --lang deu
vobsub2srt --lang deu --tesseract-data ~/.cache/tessdata_best/ patrol-mad.max1.1080p
# Selected VOBSUB language: 0 language: de
mv patrol-mad.max1.1080p.srt patrol-mad.max1.1080p.lang-deu.tessdata-best.srt

# good output
vobsub2srt patrol-mad.max1.1080p
mv patrol-mad.max1.1080p.srt patrol-mad.max1.1080p.lang-default.tessdata-default.srt

# good output
vobsub2srt --tesseract-data ~/.cache/tessdata_best/ patrol-mad.max1.1080p
mv patrol-mad.max1.1080p.srt patrol-mad.max1.1080p.lang-default.tessdata-best.srt
