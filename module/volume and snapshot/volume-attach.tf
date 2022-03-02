resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdf"#<--"sdf" because it will attach autmoatically
  volume_id   = "vol-074dbb26ad8743439"#<-- Volume which we need to attach#
  instance_id = "i-03caba101bec8097a"#<--instance which we need to attach volume to#
}
