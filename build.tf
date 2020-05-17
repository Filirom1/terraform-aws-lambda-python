#---------------------------------------------------------------------------------------------------
# Build and package the source archive.
#---------------------------------------------------------------------------------------------------
data "external" "lambda_archive" {
  program = ["python3", "${path.module}/scripts/build_lambda.py"]
  query = {
    src_dir     = "${var.source_dir}"
    output_path = "${var.output_path}"
  }
}
