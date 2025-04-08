# The Commands Handbook
### Copy the entire drive:
Replace drive1 and drive2 (To view drives use lsblk)
```bash
dd if=/dev/drive1 of=/dev/drive2 bs=32M status=progress
```
