# A minimal example to show that DNS doesn't work when cross compiling to ARM and running on Android

Usage (requires `adb`):

```sh
$ ./build_and_run.sh
dns-test: 1 file pushed. 23.9 MB/s (6673768 bytes in 0.266s)
2019/07/12 09:11:42 failed to send request: Head https://golang.org: dial tcp: lookup golang.org on [::1]:53: read udp [::1]:41875->[::1]:53: read: connection refused
```

## Android NDK

Get the Android NDK:

```sh
$ curl --fail 'https://dl.google.com/android/repository/android-ndk-r20-linux-x86_64.zip' | bsdtar -xvzf-
```
