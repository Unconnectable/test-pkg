# steps here

## 1.成功复现了多个二进制包的解析

[control-file](./debian/control)和 [changelog-file](./debian/changelog) 文件中包含了多个二进制包的定义，使用 `lintian-brush` 成功解析了这些包，并打印出了它们的名称。

```sh
$ strace -f -e trace=openat,read,close ~/bench_test/lintian-brush/target/release/lintian-brush 2>&1 | grep "debian/control"
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 5
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
[pid 3029471] openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/test-pkg/debian/control", O_RDONLY|O_CLOEXEC) = 8
```
