<<<<<<< HEAD
# アナログ時計

## 依存ライブラリ

* [args4j](http://args4j.kohsuke.org)
    * コマンドラインオプション解析ライブラリ

## 使用方法

```
java -jar clock.jar [OPTIONS]

  -d (--debug)                : debug mode. (default: false)
  -h (--help)                 : print this message and quit. (default: false)
  -hh (--more-help)           : print detail help message. (default: false)
  -tz (--timezone) <TIMEZONE> : Specifies time zone. Default is local time.
  -v (--version)              : show version. (default: false)
```

## タイムゾーン

-tz オプションで時計のタイムゾーンを指定できます．
利用可能なタイムゾーンは，--more-help オプション(-hh)で閲覧できます．

## コンパイル方法

1. [args4j](http://args4j.kohsuke.org)をダウンロードし，args4j-x.x.jar を得る．
2. Makefile を編集し，CLASSPATHにargs4j-x.x.jarを指定する．
3. makeを実行する．


=======
# make_sample
Make sample
>>>>>>> cda3049302631e1fad1a1e3546fa21b5a8d8e4d3
