resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = "vol-074dbb26ad8743439"#<--volume id which we nned to create the snapshot

  tags = {
    Name = "sid-snapshot"
  }
}
