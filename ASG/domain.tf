resource "aws_route53_record" "writer" {
  zone_id = "aws_route53_zone.example.zone_id"
  name    = "writer.kudratillo.org"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_rds_cluster.example[0].endpoint]
}

resource "aws_route53_record" "reader1" {
  zone_id = "aws_route53_zone.example.zone_id"
  name    = "reader1.kudratillo.org"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_rds_cluster.example[1].endpoint]
}

resource "aws_route53_record" "reader2" {
  zone_id = "aws_route53_zone.example.zone_id"
  name    = "reader2.kudratillo.org"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_rds_cluster.example[2].endpoint]
}

resource "aws_route53_record" "reader3" {
  zone_id = "aws_route53_zone.example.zone_id"
  name    = "reader3.kudratillo.org"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_rds_cluster.example[3].endpoint]
}
