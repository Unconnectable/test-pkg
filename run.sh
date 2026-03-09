strace -f -e trace=openat /mnt/hdd/users/filament/bench_test/lintian-brush/target/release/lintian-brush /mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian-control-has-empty-field/override/in/debian 2>&1 

strace -f -e trace=openat ~/bench_test/lintian-brush/target/release/lintian-brush -d /mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian-control-has-empty-field/override/in

#| grep "debian/control"
#/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian/control-has-empty-field/simple/in 



strace -f -e trace=openat,read,close ~/bench_test/lintian-brush/target/release/lintian-brush 2>&1 | grep "debian/control" | wc -l

```sh
ebian/control", O_RDONLY|O_CLOEXEC) = 8
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/xs-testsuite-field-in-debian-control/autopkgtest/in/debian/control", O_RDONLY|O_CLOEXEC) = 8
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/xs-testsuite-field-in-debian-control/autopkgtest/out/debian/control", O_RDONLY|O_CLOEXEC) = 8
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/xs-testsuite-field-in-debian-control/simple/in/debian/control", O_RDONLY|O_CLOEXEC) = 8
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/xs-testsuite-field-in-debian-control/simple/out/debian/control", O_RDONLY|O_CLOEXEC) = 8
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/xs-vcs-field-in-debian-control/simple/in/debian/control", O_RDONLY|O_CLOEXEC) = 8
openat(AT_FDCWD, "/mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/xs-vcs-field-in-debian-control/simple/out/debian/control", O_RDONLY|O_CLOEXEC) = 8
^[[A^[[B^C
```

strace -f -e trace=openat,read,close ~/bench_test/lintian-brush/target/release/lintian-brush /mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian-control-has-empty-field/override/in 2>&1 | grep "debian/control"




filament@pink:~/bench_test$ 
strace -f -e trace=openat,read,close ~/bench_test/lintian-brush/target/release/lintian-brush /mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian-control-has-empty-field/override/in 2>&1 | grep "debian"        
Unknown fixer specified: /mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian-control-has-empty-field/override/in




strace -f -e trace=openat ~/bench_test/lintian-brush/target/release/lintian-brush --path /mnt/hdd/users/filament/bench_test/lintian-brush/lintian-brush/tests/debian-control-has-empty-field/override/in 2>&1 | grep "debian/control"



# 假设你想修空字段，通过 --list-fixers 找到名字
~/bench_test/lintian-brush/target/release/lintian-brush debian-control-has-empty-field