# Encrypted Root Device - Volumes and Snapshots

- Root devices can now be encrypted directly

OR

- Create a snapshot of the root image
- copy the snapshot and encrypt it
- start an instance with the encrypted snapshot


## Exam Tips

- Snapshots of encrypted volumes are automatically encrypted
- Volumes restored from encrypted snapshots are encrypted automatically
- You can share snapshots, but only if they are un-encrypted
- Snapshots can be shred with other AWS accounts or made public

