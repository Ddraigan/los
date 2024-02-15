build:
  rm -rf target && cargo rustc -- -C link-arg=--script=./linker.ld && arm-none-eabi-objcopy -O binary target/aarch64-unknown-none/debug/los ./kernel7.img

object-dump:
  arm-none-eabi-objdump -D target/aarch64-unknown-none/debug/los | less
